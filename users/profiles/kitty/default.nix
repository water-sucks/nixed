{ self, config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    font = {
      name = "BlexMono Nerd Font";
      package = (pkgs.nerdfonts.override { fonts = [ "IBMPlexMono" ]; });
    };
    extraConfig = ''
      ${builtins.readFile ./theme.conf}

      font_size 8.8
    '';
  };
}
