{-# LANGUAGE TupleSections #-}
{-# OPTIONS_GHC -fno-omit-interface-pragmas #-}
module ZerepochTx.Traversable (Traversable(..), sequenceA, mapM, sequence, for, fmapDefault, foldMapDefault) where

import           Control.Applicative   (Const (..))
import           Data.Coerce           (coerce)
import           Data.Functor.Identity (Identity (..))
import           ZerepochTx.Applicative  (Applicative (..), liftA2)
import           ZerepochTx.Foldable     (Foldable)
import           ZerepochTx.Functor      (Functor, id, (<$>))
import           ZerepochTx.Monoid       (Monoid)
import           Prelude               (Either (..), Maybe (..), flip)

-- | Zerepoch Tx version of 'Data.Traversable.Traversable'.
class (Functor t, Foldable t) => Traversable t where
    -- | Zerepoch Tx version of 'Data.Traversable.traverse'.
    traverse :: Applicative f => (a -> f b) -> t a -> f (t b)

    -- All the other methods are deliberately omitted,
    -- to make this a one-method class which has a simpler representation


instance Traversable [] where
    {-# INLINABLE traverse #-}
    traverse _ []     = pure []
    traverse f (x:xs) = liftA2 (:) (f x) (traverse f xs)

instance Traversable Maybe where
    {-# INLINABLE traverse #-}
    traverse _ Nothing  = pure Nothing
    traverse f (Just a) = Just <$> f a

instance Traversable (Either c) where
    {-# INLINABLE traverse #-}
    traverse _ (Left a)  = pure (Left a)
    traverse f (Right a) = Right <$> f a

instance Traversable ((,) c) where
    {-# INLINABLE traverse #-}
    traverse f (c, a) = (c,) <$> f a

instance Traversable Identity where
    {-# INLINABLE traverse #-}
    traverse f (Identity a) = Identity <$> f a

instance Traversable (Const c) where
    {-# INLINABLE traverse #-}
    traverse _ (Const c) = pure (Const c)

-- | Zerepoch Tx version of 'Data.Traversable.sequenceA'.
sequenceA :: (Traversable t, Applicative f) => t (f a) -> f (t a)
{-# INLINE sequenceA #-}
sequenceA = traverse id

-- | Zerepoch Tx version of 'Data.Traversable.sequence'.
sequence :: (Traversable t, Applicative f) => t (f a) -> f (t a)
{-# INLINE sequence #-}
sequence = sequenceA

-- | Zerepoch Tx version of 'Data.Traversable.mapM'.
mapM :: (Traversable t, Applicative f) => (a -> f b) -> t a -> f (t b)
{-# INLINE mapM #-}
mapM = traverse

-- | Zerepoch Tx version of 'Data.Traversable.for'.
for :: (Traversable t, Applicative f) => t a -> (a -> f b) -> f (t b)
{-# INLINE for #-}
for = flip traverse

-- | Zerepoch Tx version of 'Data.Traversable.fmapDefault'.
fmapDefault :: forall t a b . Traversable t
            => (a -> b) -> t a -> t b
{-# INLINE fmapDefault #-}
fmapDefault = coerce (traverse :: (a -> Identity b) -> t a -> Identity (t b))

-- | Zerepoch Tx version of 'Data.Traversable.foldMapDefault'.
foldMapDefault :: forall t m a . (Traversable t, Monoid m)
               => (a -> m) -> t a -> m
{-# INLINE foldMapDefault #-}
foldMapDefault = coerce (traverse :: (a -> Const m ()) -> t a -> Const m (t ()))