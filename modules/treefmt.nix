{inputs, ...}: {
  perSystem = {pkgs, ...}: let
    settings = {
      projectRootFile = "flake.nix";
      programs.alejandra.enable = true;
      programs.stylua.enable = true;
      programs.prettier.enable = true;
      programs.shfmt.enable = true;

      settings.formatter = {
        stylua.options = [
          "-f"
          "./home/profiles/base/nvim/.stylua.toml"
        ];
      };
    };
  in {
    treefmt = {
      config = settings;
    };

    formatter = inputs.treefmt.lib.mkWrapper pkgs settings;
  };
}
