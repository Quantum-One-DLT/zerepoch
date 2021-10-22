{-# LANGUAGE DataKinds           #-}
{-# LANGUAGE DeriveAnyClass      #-}
{-# LANGUAGE DeriveGeneric       #-}
{-# LANGUAGE DerivingStrategies  #-}
{-# LANGUAGE FlexibleContexts    #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE RecordWildCards     #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell     #-}
{-# LANGUAGE TypeApplications    #-}
{-# LANGUAGE TypeFamilies        #-}
{-# OPTIONS_GHC -fno-ignore-interface-pragmas #-}
-- | A "pay-to-pubkey" transaction output implemented as a Zerepoch
--   contract. This is useful if you need something that behaves like
--   a pay-to-pubkey output, but is not (easily) identified by wallets
--   as one.
module Zerepoch.Contracts.PubKey(pubKeyContract, typedValidator, PubKeyError(..), AsPubKeyError(..)) where

import           Control.Lens
import           Control.Monad.Error.Lens
import           Data.Aeson               (FromJSON, ToJSON)
import qualified Data.Map                 as Map
import           GHC.Generics             (Generic)

import           Ledger                   hiding (initialise, to)
import           Ledger.Contexts          as V
import           Ledger.Typed.Scripts     (TypedValidator)
import qualified Ledger.Typed.Scripts     as Scripts
import qualified ZerepochTx

import qualified Ledger.Constraints       as Constraints
import           Zerepoch.Contract          as Contract

mkValidator :: PubKeyHash -> () -> () -> ScriptContext -> Bool
mkValidator pk' _ _ p = V.txSignedBy (scriptContextTxInfo p) pk'

data PubKeyContract

instance Scripts.ValidatorTypes PubKeyContract where
    type instance RedeemerType PubKeyContract = ()
    type instance DatumType PubKeyContract = ()

typedValidator :: PubKeyHash -> Scripts.TypedValidator PubKeyContract
typedValidator = Scripts.mkTypedValidatorParam @PubKeyContract
    $$(ZerepochTx.compile [|| mkValidator ||])
    $$(ZerepochTx.compile [|| wrap ||])
    where
        wrap = Scripts.wrapValidator

data PubKeyError =
    ScriptOutputMissing PubKeyHash
    | MultipleScriptOutputs PubKeyHash
    | PKContractError ContractError
    deriving stock (Eq, Show, Generic)
    deriving anyclass (ToJSON, FromJSON)

makeClassyPrisms ''PubKeyError

instance AsContractError PubKeyError where
    _ContractError = _PKContractError

-- | Lock some funds in a 'PayToPubKey' contract, returning the output's address
--   and a 'TxIn' transaction input that can spend it.
pubKeyContract
    :: forall w s e.
    ( AsPubKeyError e
    )
    => PubKeyHash
    -> Value
    -> Contract w s e (TxOutRef, Maybe ChainIndexTxOut, TypedValidator PubKeyContract)
pubKeyContract pk vl = mapError (review _PubKeyError   ) $ do
    let inst = typedValidator pk
        address = Scripts.validatorAddress inst
        tx = Constraints.mustPayToTheScript () vl

    ledgerTx <- submitTxConstraints inst tx

    _ <- awaitTxConfirmed (txId ledgerTx)
    let refs = Map.keys
               $ Map.filter ((==) address . txOutAddress)
               $ unspentOutputsTx ledgerTx

    case refs of
        []                   -> throwing _ScriptOutputMissing pk
        [outRef] -> do
            ciTxOut <- txOutFromRef outRef
            pure (outRef, ciTxOut, inst)
        _                    -> throwing _MultipleScriptOutputs pk