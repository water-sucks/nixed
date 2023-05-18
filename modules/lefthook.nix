{
  config,
  pkgs,
  ...
}: let
  treefmt = "${config.treefmt.build.wrapper}/bin/treefmt";
  lefthook = "${pkgs.lefthook}/bin/lefthook";

  lefthookConfig = {
    # Disabling until the next release, when configurable colors are supported
    colors = false;

    pre-commit.commands = {
      # Nix, stop sorting things by alphabetical order! It's annoying sometimes.
      "1_format".run = "LEFTHOOK_QUIET=meta,success ${lefthook} run format";
      "2_checks".run = "LEFTHOOK_QUIET=meta,success ${lefthook} run checks";
    };

    format.commands = {
      treefmt.run = "${treefmt} --fail-on-change {staged_files}";
    };

    checks = {
      parallel = true;
      commands = {
        statix = {
          glob = "*.nix";
          exclude = "generated.nix|node-packages";
          # statix only supports single files; cringe
          run = "echo {staged_files} | xargs -n1 ${pkgs.statix}/bin/statix check";
        };

        deadnix = {
          glob = "*.nix";
          exclude = "generated.nix|node-packages";
          run = "${pkgs.deadnix}/bin/deadnix -f {staged_files}";
        };

        editorconfig-checker.run = "${pkgs.editorconfig-checker}/bin/editorconfig-checker";
      };
    };
  };
in {
  data = lefthookConfig;
  output = "lefthook.yml";
  format = "yaml";
}
