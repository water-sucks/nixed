{ self, config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    package =
      if pkgs.stdenv.isLinux then
        pkgs.kitty
      else
        pkgs.runCommand "kitty-0.0.0" { } "mkdir $out";
    font = {
      name = "BlexMono Nerd Font";
      package = pkgs.nerdfonts.override { fonts = [ "IBMPlexMono" ]; };
      size = 10;
    };
    extraConfig = ''
      ${builtins.readFile ./theme.conf}
    '';
  };
}
