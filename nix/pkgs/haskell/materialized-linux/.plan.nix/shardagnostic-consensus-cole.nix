{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { asserts = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "shardagnostic-consensus-cole"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2021 The-Blockchain-Company ";
      maintainer = "operations@blockchain-company.io";
      author = "The Blockchain Co. Engineering Team";
      homepage = "";
      url = "";
      synopsis = "Cole ledger integration in the Shardagnostic consensus layer";
      description = "";
      buildType = "Simple";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" "NOTICE" ];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [];
      extraTmpFiles = [];
      extraDocFiles = [];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bcc-binary" or (errorHandler.buildDepError "bcc-binary"))
          (hsPkgs."bcc-crypto" or (errorHandler.buildDepError "bcc-crypto"))
          (hsPkgs."bcc-crypto-class" or (errorHandler.buildDepError "bcc-crypto-class"))
          (hsPkgs."bcc-crypto-wrapper" or (errorHandler.buildDepError "bcc-crypto-wrapper"))
          (hsPkgs."bcc-ledger-cole" or (errorHandler.buildDepError "bcc-ledger-cole"))
          (hsPkgs."bcc-prelude" or (errorHandler.buildDepError "bcc-prelude"))
          (hsPkgs."bcc-slotting" or (errorHandler.buildDepError "bcc-slotting"))
          (hsPkgs."cborg" or (errorHandler.buildDepError "cborg"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
          (hsPkgs."nothunks" or (errorHandler.buildDepError "nothunks"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."shardagnostic-network" or (errorHandler.buildDepError "shardagnostic-network"))
          (hsPkgs."shardagnostic-consensus" or (errorHandler.buildDepError "shardagnostic-consensus"))
          ];
        buildable = true;
        modules = [
          "Shardagnostic/Consensus/Cole/Crypto/DSIGN"
          "Shardagnostic/Consensus/Cole/EBBs"
          "Shardagnostic/Consensus/Cole/Ledger"
          "Shardagnostic/Consensus/Cole/Ledger/Block"
          "Shardagnostic/Consensus/Cole/Ledger/Config"
          "Shardagnostic/Consensus/Cole/Ledger/Conversions"
          "Shardagnostic/Consensus/Cole/Ledger/Forge"
          "Shardagnostic/Consensus/Cole/Ledger/HeaderValidation"
          "Shardagnostic/Consensus/Cole/Ledger/Inspect"
          "Shardagnostic/Consensus/Cole/Ledger/Integrity"
          "Shardagnostic/Consensus/Cole/Ledger/Ledger"
          "Shardagnostic/Consensus/Cole/Ledger/Mempool"
          "Shardagnostic/Consensus/Cole/Ledger/NetworkProtocolVersion"
          "Shardagnostic/Consensus/Cole/Ledger/Orphans"
          "Shardagnostic/Consensus/Cole/Ledger/PBFT"
          "Shardagnostic/Consensus/Cole/Ledger/Serialisation"
          "Shardagnostic/Consensus/Cole/Node"
          "Shardagnostic/Consensus/Cole/Node/Serialisation"
          "Shardagnostic/Consensus/Cole/Protocol"
          ];
        hsSourceDirs = [ "src" ];
        };
      exes = {
        "db-converter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bcc-binary" or (errorHandler.buildDepError "bcc-binary"))
            (hsPkgs."bcc-ledger-cole" or (errorHandler.buildDepError "bcc-ledger-cole"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."shardagnostic-network" or (errorHandler.buildDepError "shardagnostic-network"))
            (hsPkgs."shardagnostic-consensus" or (errorHandler.buildDepError "shardagnostic-consensus"))
            (hsPkgs."shardagnostic-consensus-cole" or (errorHandler.buildDepError "shardagnostic-consensus-cole"))
            ];
          buildable = true;
          hsSourceDirs = [ "tools/db-converter" ];
          mainPath = [ "Main.hs" ];
          };
        };
      };
    } // {
    src = (pkgs.lib).mkDefault (pkgs.fetchgit {
      url = "6";
      rev = "minimal";
      sha256 = "";
      }) // {
      url = "6";
      rev = "minimal";
      sha256 = "";
      };
    postUnpack = "sourceRoot+=/shardagnostic-consensus-cole; echo source root reset to \$sourceRoot";
    }