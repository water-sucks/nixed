{
  perSystem = {
    pre-commit = {
      check.enable = true;
      settings = {
        hooks = {
          treefmt.enable = true;
          statix.enable = true;
          shellcheck.enable = true;
          editorconfig-checker.enable = true;
        };
        settings = {
          statix.ignore = [
            "pkgs/development/node-packages/node-env.nix"
            "pkgs/development/node-packages/node-packages.nix"
          ];
        };
      };
    };
  };
}
