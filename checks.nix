{
  inputs,
  pkgs,
}: let
  pre-commit-hooks = inputs.pre-commit-hooks.lib.${pkgs.system};
in {
  pre-commit-check = pre-commit-hooks.run {
    src = ./.;
    hooks = {
      treefmt = {
        name = "treefmt";
        enable = true;
        description = "One CLI to format the code tree.";
        types = ["file"];
        pass_filenames = true;
        entry = "${pkgs.treefmt}/bin/treefmt";
      };
      statix.enable = true;
      shellcheck.enable = true;
      editorconfig-checker = {
        name = "editorconfig-checker";
        enable = true;
        description = "Check if files conform to .editorconfig rules.";
        types = ["file"];
        pass_filenames = true;
        entry = "${pkgs.editorconfig-checker}/bin/editorconfig-checker";
      };
    };
    settings = {
      statix.ignore = [
        "pkgs/development/node-packages/node-env.nix"
        "pkgs/development/node-packages/node-packages.nix"
      ];
    };
  };
}
