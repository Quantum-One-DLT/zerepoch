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
    flags = { defer-plugin-errors = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "zerepoch-pab"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "jann.mueller@blockchain-company.io";
      author = "Jann Müller";
      homepage = "https://github.com/tbco/zerepoch#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/The-Blockchain-Company/zerepoch#readme>";
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
          (hsPkgs."freer-extras" or (errorHandler.buildDepError "freer-extras"))
          (hsPkgs."playground-common" or (errorHandler.buildDepError "playground-common"))
          (hsPkgs."zerepoch-chain-index" or (errorHandler.buildDepError "zerepoch-chain-index"))
          (hsPkgs."zerepoch-contract" or (errorHandler.buildDepError "zerepoch-contract"))
          (hsPkgs."zerepoch-ledger" or (errorHandler.buildDepError "zerepoch-ledger"))
          (hsPkgs."zerepoch-tx" or (errorHandler.buildDepError "zerepoch-tx"))
          (hsPkgs."zerepoch-tx-plugin" or (errorHandler.buildDepError "zerepoch-tx-plugin"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bcc-api" or (errorHandler.buildDepError "bcc-api"))
          (hsPkgs."bcc-crypto" or (errorHandler.buildDepError "bcc-crypto"))
          (hsPkgs."bcc-ledger-cole" or (errorHandler.buildDepError "bcc-ledger-cole"))
          (hsPkgs."bcc-prelude" or (errorHandler.buildDepError "bcc-prelude"))
          (hsPkgs."bcc-slotting" or (errorHandler.buildDepError "bcc-slotting"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."cborg" or (errorHandler.buildDepError "cborg"))
          (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
          (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
          (hsPkgs."generic-arbitrary" or (errorHandler.buildDepError "generic-arbitrary"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-mux" or (errorHandler.buildDepError "network-mux"))
          (hsPkgs."newtype-generics" or (errorHandler.buildDepError "newtype-generics"))
          (hsPkgs."nothunks" or (errorHandler.buildDepError "nothunks"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."shardagnostic-consensus" or (errorHandler.buildDepError "shardagnostic-consensus"))
          (hsPkgs."shardagnostic-consensus-cole" or (errorHandler.buildDepError "shardagnostic-consensus-cole"))
          (hsPkgs."shardagnostic-consensus-sophie" or (errorHandler.buildDepError "shardagnostic-consensus-sophie"))
          (hsPkgs."shardagnostic-consensus-bcc" or (errorHandler.buildDepError "shardagnostic-consensus-bcc"))
          (hsPkgs."shardagnostic-network" or (errorHandler.buildDepError "shardagnostic-network"))
          (hsPkgs."shardagnostic-network-framework" or (errorHandler.buildDepError "shardagnostic-network-framework"))
          (hsPkgs."zerepoch-ledger-api" or (errorHandler.buildDepError "zerepoch-ledger-api"))
          (hsPkgs."purescript-bridge" or (errorHandler.buildDepError "purescript-bridge"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."servant-options" or (errorHandler.buildDepError "servant-options"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."typed-protocols" or (errorHandler.buildDepError "typed-protocols"))
          (hsPkgs."typed-protocols-examples" or (errorHandler.buildDepError "typed-protocols-examples"))
          (hsPkgs."servant-purescript" or (errorHandler.buildDepError "servant-purescript"))
          (hsPkgs."servant-websockets" or (errorHandler.buildDepError "servant-websockets"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-cors" or (errorHandler.buildDepError "wai-cors"))
          (hsPkgs."Win32-network" or (errorHandler.buildDepError "Win32-network"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."tbco-monitoring" or (errorHandler.buildDepError "tbco-monitoring"))
          (hsPkgs."lobemo-backend-ekg" or (errorHandler.buildDepError "lobemo-backend-ekg"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
          (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
          (hsPkgs."beam-sqlite" or (errorHandler.buildDepError "beam-sqlite"))
          (hsPkgs."beam-migrate" or (errorHandler.buildDepError "beam-migrate"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.bcc-node.components.exes.bcc-node or (pkgs.buildPackages.bcc-node or (errorHandler.buildToolDepError "bcc-node:bcc-node")))
          (hsPkgs.buildPackages.bcc-cli.components.exes.bcc-cli or (pkgs.buildPackages.bcc-cli or (errorHandler.buildToolDepError "bcc-cli:bcc-cli")))
          ];
        buildable = true;
        modules = [
          "Servant/Extra"
          "Bcc/Api/NetworkId/Extra"
          "Bcc/BM/Data/Tracer/Extras"
          "Bcc/Chain"
          "Bcc/ChainIndex/ChainIndex"
          "Bcc/ChainIndex/Server"
          "Bcc/ChainIndex/Types"
          "Bcc/Node/API"
          "Bcc/Node/Client"
          "Bcc/Node/Mock"
          "Bcc/Node/Server"
          "Bcc/Node/Types"
          "Bcc/Protocol/Socket/Mock/Client"
          "Bcc/Protocol/Socket/Mock/Server"
          "Bcc/Protocol/Socket/Client"
          "Bcc/Protocol/Socket/Type"
          "Bcc/Wallet/API"
          "Bcc/Wallet/Client"
          "Bcc/Wallet/Mock"
          "Bcc/Wallet/Server"
          "Bcc/Wallet/Types"
          "Control/Concurrent/Availability"
          "Control/Concurrent/STM/Extras"
          "Control/Concurrent/STM/Extras/Stream"
          "Control/Monad/Freer/Delay"
          "Zerepoch/PAB/App"
          "Zerepoch/PAB/Arbitrary"
          "Zerepoch/PAB/Core"
          "Zerepoch/PAB/Core/ContractInstance"
          "Zerepoch/PAB/Core/ContractInstance/BlockchainEnv"
          "Zerepoch/PAB/Core/ContractInstance/RequestHandlers"
          "Zerepoch/PAB/Core/ContractInstance/STM"
          "Zerepoch/PAB/Db/Beam"
          "Zerepoch/PAB/Db/Beam/ContractStore"
          "Zerepoch/PAB/Db/Memory/ContractStore"
          "Zerepoch/PAB/Effects/Contract"
          "Zerepoch/PAB/Effects/Contract/Builtin"
          "Zerepoch/PAB/Effects/DbStore"
          "Zerepoch/PAB/Effects/TimeEffect"
          "Zerepoch/PAB/Effects/UUID"
          "Zerepoch/PAB/Events"
          "Zerepoch/PAB/Events/Contract"
          "Zerepoch/PAB/Events/ContractInstanceState"
          "Zerepoch/PAB/Instances"
          "Zerepoch/PAB/Monitoring/Config"
          "Zerepoch/PAB/Monitoring/Monitoring"
          "Zerepoch/PAB/Monitoring/PABLogMsg"
          "Zerepoch/PAB/Monitoring/Util"
          "Zerepoch/PAB/Run"
          "Zerepoch/PAB/Run/Cli"
          "Zerepoch/PAB/Run/Command"
          "Zerepoch/PAB/Run/CommandParser"
          "Zerepoch/PAB/Run/PSGenerator"
          "Zerepoch/PAB/Simulator"
          "Zerepoch/PAB/Timeout"
          "Zerepoch/PAB/Types"
          "Zerepoch/PAB/Webserver/API"
          "Zerepoch/PAB/Webserver/Client"
          "Zerepoch/PAB/Webserver/Handler"
          "Zerepoch/PAB/Webserver/Server"
          "Zerepoch/PAB/Webserver/Types"
          "Zerepoch/PAB/Webserver/WebSocket"
          ];
        hsSourceDirs = [ "src" ];
        };
      exes = {
        "zerepoch-pab-setup" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."freer-extras" or (errorHandler.buildDepError "freer-extras"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."tbco-monitoring" or (errorHandler.buildDepError "tbco-monitoring"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lobemo-backend-ekg" or (errorHandler.buildDepError "lobemo-backend-ekg"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."playground-common" or (errorHandler.buildDepError "playground-common"))
            (hsPkgs."zerepoch-contract" or (errorHandler.buildDepError "zerepoch-contract"))
            (hsPkgs."zerepoch-ledger" or (errorHandler.buildDepError "zerepoch-ledger"))
            (hsPkgs."zerepoch-pab" or (errorHandler.buildDepError "zerepoch-pab"))
            (hsPkgs."zerepoch-use-cases" or (errorHandler.buildDepError "zerepoch-use-cases"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."purescript-bridge" or (errorHandler.buildDepError "purescript-bridge"))
            (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."servant-purescript" or (errorHandler.buildDepError "servant-purescript"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          modules = [ "CommandParser" ];
          hsSourceDirs = [ "app" ];
          mainPath = [ "Main.hs" ];
          };
        "zerepoch-pab-examples" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."freer-extras" or (errorHandler.buildDepError "freer-extras"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."playground-common" or (errorHandler.buildDepError "playground-common"))
            (hsPkgs."zerepoch-contract" or (errorHandler.buildDepError "zerepoch-contract"))
            (hsPkgs."zerepoch-ledger" or (errorHandler.buildDepError "zerepoch-ledger"))
            (hsPkgs."zerepoch-pab" or (errorHandler.buildDepError "zerepoch-pab"))
            (hsPkgs."zerepoch-use-cases" or (errorHandler.buildDepError "zerepoch-use-cases"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."purescript-bridge" or (errorHandler.buildDepError "purescript-bridge"))
            (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
            (hsPkgs."servant-purescript" or (errorHandler.buildDepError "servant-purescript"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          modules = [
            "ContractExample/AtomicSwap"
            "ContractExample/PayToWallet"
            "ContractExample/WaitForTx"
            "ContractExample"
            ];
          hsSourceDirs = [ "examples" ];
          mainPath = [ "Main.hs" ];
          };
        "zerepoch-uniswap" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."freer-extras" or (errorHandler.buildDepError "freer-extras"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."zerepoch-contract" or (errorHandler.buildDepError "zerepoch-contract"))
            (hsPkgs."zerepoch-ledger" or (errorHandler.buildDepError "zerepoch-ledger"))
            (hsPkgs."zerepoch-pab" or (errorHandler.buildDepError "zerepoch-pab"))
            (hsPkgs."zerepoch-use-cases" or (errorHandler.buildDepError "zerepoch-use-cases"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          hsSourceDirs = [ "examples/uniswap" ];
          mainPath = [ "Main.hs" ];
          };
        "zerepoch-pab-test-psgenerator" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."freer-extras" or (errorHandler.buildDepError "freer-extras"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."zerepoch-contract" or (errorHandler.buildDepError "zerepoch-contract"))
            (hsPkgs."zerepoch-pab" or (errorHandler.buildDepError "zerepoch-pab"))
            (hsPkgs."zerepoch-use-cases" or (errorHandler.buildDepError "zerepoch-use-cases"))
            (hsPkgs."zerepoch-ledger" or (errorHandler.buildDepError "zerepoch-ledger"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
            (hsPkgs."zerepoch-tx" or (errorHandler.buildDepError "zerepoch-tx"))
            (hsPkgs."playground-common" or (errorHandler.buildDepError "playground-common"))
            (hsPkgs."servant-purescript" or (errorHandler.buildDepError "servant-purescript"))
            (hsPkgs."purescript-bridge" or (errorHandler.buildDepError "purescript-bridge"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          modules = [
            "ContractExample/AtomicSwap"
            "ContractExample/PayToWallet"
            "Zerepoch/PAB/Effects/Contract/ContractTest"
            "Zerepoch/PAB/Simulator/Test"
            ];
          hsSourceDirs = [ "test-psgenerator" "test/full" "examples" ];
          mainPath = [ "TestPSGenerator.hs" ];
          };
        "tx-inject" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."zerepoch-pab" or (errorHandler.buildDepError "zerepoch-pab"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."zerepoch-contract" or (errorHandler.buildDepError "zerepoch-contract"))
            (hsPkgs."zerepoch-ledger" or (errorHandler.buildDepError "zerepoch-ledger"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."rate-limit" or (errorHandler.buildDepError "rate-limit"))
            (hsPkgs."signal" or (errorHandler.buildDepError "signal"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ];
          buildable = true;
          modules = [ "TxInject/RandomTx" ];
          hsSourceDirs = [ "tx-inject" ];
          mainPath = [
            "Main.hs"
            ] ++ (pkgs.lib).optional (flags.defer-plugin-errors) "";
          };
        "sync-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bcc-api" or (errorHandler.buildDepError "bcc-api"))
            (hsPkgs."bcc-slotting" or (errorHandler.buildDepError "bcc-slotting"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."zerepoch-ledger" or (errorHandler.buildDepError "zerepoch-ledger"))
            (hsPkgs."zerepoch-pab" or (errorHandler.buildDepError "zerepoch-pab"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          hsSourceDirs = [ "sync-client" ];
          mainPath = [
            "Main.hs"
            ] ++ (pkgs.lib).optional (flags.defer-plugin-errors) "";
          };
        };
      tests = {
        "zerepoch-pab-test-light" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bcc-api" or (errorHandler.buildDepError "bcc-api"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."freer-extras" or (errorHandler.buildDepError "freer-extras"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."zerepoch-contract" or (errorHandler.buildDepError "zerepoch-contract"))
            (hsPkgs."zerepoch-pab" or (errorHandler.buildDepError "zerepoch-pab"))
            (hsPkgs."zerepoch-ledger" or (errorHandler.buildDepError "zerepoch-ledger"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          modules = [
            "Bcc/Api/NetworkId/ExtraSpec"
            "Bcc/Wallet/ServerSpec"
            "Control/Concurrent/STM/ExtrasSpec"
            ];
          hsSourceDirs = [ "test/light" ];
          mainPath = [ "Spec.hs" ];
          };
        "zerepoch-pab-test-full" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."freer-extras" or (errorHandler.buildDepError "freer-extras"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."zerepoch-contract" or (errorHandler.buildDepError "zerepoch-contract"))
            (hsPkgs."zerepoch-pab" or (errorHandler.buildDepError "zerepoch-pab"))
            (hsPkgs."zerepoch-use-cases" or (errorHandler.buildDepError "zerepoch-use-cases"))
            (hsPkgs."zerepoch-ledger" or (errorHandler.buildDepError "zerepoch-ledger"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
            (hsPkgs."zerepoch-tx" or (errorHandler.buildDepError "zerepoch-tx"))
            (hsPkgs."playground-common" or (errorHandler.buildDepError "playground-common"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."tbco-monitoring" or (errorHandler.buildDepError "tbco-monitoring"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."purescript-bridge" or (errorHandler.buildDepError "purescript-bridge"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            ];
          buildable = true;
          modules = [
            "ContractExample"
            "ContractExample/WaitForTx"
            "ContractExample/AtomicSwap"
            "ContractExample/PayToWallet"
            "Zerepoch/PAB/CoreSpec"
            "Zerepoch/PAB/CliSpec"
            "Zerepoch/PAB/Effects/Contract/BuiltinSpec"
            "Zerepoch/PAB/Effects/Contract/ContractTest"
            "Zerepoch/PAB/Simulator/Test"
            ];
          hsSourceDirs = [ "test/full" "examples" ];
          mainPath = [ "Spec.hs" ];
          };
        "zerepoch-pab-test-full-long-running" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."freer-extras" or (errorHandler.buildDepError "freer-extras"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."zerepoch-contract" or (errorHandler.buildDepError "zerepoch-contract"))
            (hsPkgs."zerepoch-pab" or (errorHandler.buildDepError "zerepoch-pab"))
            (hsPkgs."zerepoch-use-cases" or (errorHandler.buildDepError "zerepoch-use-cases"))
            (hsPkgs."zerepoch-ledger" or (errorHandler.buildDepError "zerepoch-ledger"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
            (hsPkgs."zerepoch-tx" or (errorHandler.buildDepError "zerepoch-tx"))
            (hsPkgs."playground-common" or (errorHandler.buildDepError "playground-common"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."tbco-monitoring" or (errorHandler.buildDepError "tbco-monitoring"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."purescript-bridge" or (errorHandler.buildDepError "purescript-bridge"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            ];
          buildable = true;
          modules = [
            "ContractExample"
            "ContractExample/WaitForTx"
            "ContractExample/AtomicSwap"
            "ContractExample/PayToWallet"
            "Zerepoch/PAB/CliSpec"
            "Zerepoch/PAB/Effects/Contract/ContractTest"
            "Zerepoch/PAB/Simulator/Test"
            ];
          hsSourceDirs = [ "test/full" "examples" ];
          mainPath = [ "SpecLongRunning.hs" ];
          };
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../zerepoch-pab; }