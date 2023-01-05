{
  perSystem = {config, ...}: {
    pre-commit = {
      check.enable = true;
      settings = {
        hooks = {
          treefmt = {
            name = "treefmt";
            enable = true;
            description = "One CLI to format the code tree.";
            types = ["file"];
            pass_filenames = false;
            entry = "${config.treefmt.build.wrapper}/bin/treefmt";
          };
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
