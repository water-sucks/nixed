{ self, config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
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
