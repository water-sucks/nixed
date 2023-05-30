{
  config,
  pkgs,
  ...
}: let
  treefmt = "${config.treefmt.build.wrapper}/bin/treefmt";

  lefthookConfig = {
    colors = false;
    skip_output = [
      "meta"
      "success"
      "summary"
      "execution"
      "execution_out"
    ];

    pre-commit = {
      piped = true;
      commands = {
        treefmt.run = "${treefmt} --fail-on-change {staged_files}";

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
