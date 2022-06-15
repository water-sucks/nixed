{ self, config, pkgs, lib, ... }:

{
  fonts = {
    fonts = with pkgs; [
      ibm-plex
      (nerdfonts.override { fonts = [ "IBMPlexMono" ]; })
      font-awesome
    ];
    fontconfig = {
      defaultFonts = {
        monospace = [ "BlexMono Nerd Font" ];
        sansSerif = [ "IBM Plex Sans" "IBM Plex Sans JP" ];
        serif = [ "IBM Plex Serif" ];
      };
    };
  };
}
