{pkgs, ...}: let
  treefmtConfig = {
    formatter = {
      alejandra = {
        command = "${pkgs.alejandra}/bin/alejandra";
        includes = ["*.nix"];
      };
      prettier = {
        command = "${pkgs.nodePackages.prettier}/bin/prettier";
        includes = ["*.css" "*.js" "*.md" "*.yml" "*.json"];
        options = ["-w"];
      };
      shfmt = {
        command = "${pkgs.shfmt}/bin/shfmt";
        includes = ["*.sh"];
        options = ["-i" "2" "-s" "-w"];
      };
      stylua = {
        command = "${pkgs.stylua}/bin/stylua";
        includes = ["*.lua"];
      };
    };
  };
in {
  data = treefmtConfig;
  output = "treefmt.toml";
  format = "toml";
}
