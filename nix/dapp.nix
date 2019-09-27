# This file has been generated by dapp2nix 1.1.1, do not edit.

{ solidityPackage, solc, dapp2 }:

let
  inherit (builtins) map listToAttrs attrNames attrValues;
  mapAttrs = if (builtins ? mapAttrs)
    then builtins.mapAttrs
    else f: attrs:
      listToAttrs (map
        (name: { inherit name; value = f name attrs."${name}"; })
        (attrNames attrs));

  defaults = {
    inherit solc;
    test-hevm = dapp2.test-hevm;
    doCheck = true;
  };

  package = spec: let
    spec' = defaults // (removeAttrs spec [ "repo'" "src'" ]);
    deps = map (spec:
      package (spec // { inherit (spec') solc test-hevm doCheck; })
    ) (attrValues spec'.deps);
  in solidityPackage (spec' // { inherit deps; });

  packageSpecs = mapAttrs (_: package);

  specs = rec {
    dss-deploy-pause-proxy-actions_966d541 = rec {
      name = "dss-deploy-pause-proxy-actions";
      deps = {
      };
      repo' = {
        name = "dss-deploy-pause-proxy-actions-966d541-source";
        url = "https://github.com/makerdao/dss-deploy-pause-proxy-actions";
        rev = "966d541d2701e8f5c5f9827f85be1721fa0a1320";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-deploy_29755b9 = rec {
      name = "dss-deploy";
      deps = {
      };
      repo' = {
        name = "dss-deploy-29755b9-source";
        url = "https://github.com/makerdao/dss-deploy";
        rev = "29755b9d637384821f7839adda5a0f71269125c9";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-proxy-actions_2bfe32c = rec {
      name = "dss-proxy-actions";
      deps = {
      };
      repo' = {
        name = "dss-proxy-actions-2bfe32c-source";
        url = "https://github.com/makerdao/dss-proxy-actions";
        rev = "2bfe32ce10b0006eee53024ca19c5efe25840775";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    gov-polling-generator_d08e43e = rec {
      name = "gov-polling-generator";
      deps = {
      };
      repo' = {
        name = "gov-polling-generator-d08e43e-source";
        url = "https://github.com/makerdao/gov-polling-generator";
        rev = "d08e43ee1a8d6daac3fc0bc4aee5a0c92f62c2e8";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    line-spell_eabdb69 = rec {
      name = "line-spell";
      deps = {
      };
      repo' = {
        name = "line-spell-eabdb69-source";
        url = "https://github.com/makerdao/line-spell";
        rev = "eabdb6944fe87d827377b6726f00abf09f2d6538";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    mkr-authority_441a77d = rec {
      name = "mkr-authority";
      deps = {
      };
      repo' = {
        name = "mkr-authority-441a77d-source";
        url = "https://github.com/makerdao/mkr-authority";
        rev = "441a77d5e769d0a18a107522b8a99c58d0e7d55d";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    multicall_df1e59d = rec {
      name = "multicall";
      deps = {
      };
      repo' = {
        name = "multicall-df1e59d-source";
        url = "https://github.com/makerdao/multicall";
        rev = "df1e59d39bc525d573ec351dbf23afe77c903a73";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    osm_504c474 = rec {
      name = "osm";
      deps = {
      };
      repo' = {
        name = "osm-504c474-source";
        url = "https://github.com/makerdao/osm";
        rev = "504c47437916e29d918a9d1f40eb1f7595f3e9ce";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    scd-mcd-migration_c482682 = rec {
      name = "scd-mcd-migration";
      deps = {
      };
      repo' = {
        name = "scd-mcd-migration-c482682-source";
        url = "https://github.com/makerdao/scd-mcd-migration";
        rev = "c48268266e3be6165aa683e6e92721878a80c5a9";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    testchain-medians_1d01e6a = rec {
      name = "testchain-medians";
      deps = {
      };
      repo' = {
        name = "testchain-medians-1d01e6a-source";
        url = "https://github.com/makerdao/testchain-medians";
        rev = "1d01e6ae331bfb2381e32e005abc2b090af02fad";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    token-faucet_d7349d1 = rec {
      name = "token-faucet";
      deps = {
      };
      repo' = {
        name = "token-faucet-d7349d1-source";
        url = "https://github.com/makerdao/token-faucet";
        rev = "d7349d13f6cd83e8d0aa21e93544988fab0b6b24";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    vote-proxy_6fdbee3 = rec {
      name = "vote-proxy";
      deps = {
      };
      repo' = {
        name = "vote-proxy-6fdbee3-source";
        url = "https://github.com/makerdao/vote-proxy";
        rev = "6fdbee3ac48bb915e715668374c1deba95cdb6f6";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-deploy-scripts = rec {
      name = "dss-deploy-scripts";
      deps = {
        dss-deploy = dss-deploy_29755b9;
        dss-deploy-pause-proxy-actions = dss-deploy-pause-proxy-actions_966d541;
        dss-proxy-actions = dss-proxy-actions_2bfe32c;
        gov-polling-generator = gov-polling-generator_d08e43e;
        line-spell = line-spell_eabdb69;
        mkr-authority = mkr-authority_441a77d;
        multicall = multicall_df1e59d;
        osm = osm_504c474;
        scd-mcd-migration = scd-mcd-migration_c482682;
        testchain-medians = testchain-medians_1d01e6a;
        token-faucet = token-faucet_d7349d1;
        vote-proxy = vote-proxy_6fdbee3;
      };
      src' = ../.;
      src = ../src;
    };
    this = dss-deploy-scripts;
  };
in {
  inherit package packageSpecs specs;
  this = package specs.this;
  deps = packageSpecs specs.this.deps;
  version = "1.1.1";
}
