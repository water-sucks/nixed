{ self, config, pkgs, ... }:

{
  fonts = {
    fonts = with pkgs; [
      (nerdfonts.override { fonts = [ "IBMPlexMono" ]; })
    ];
    fontconfig.defaultFonts = {
      monospace = [ "BlexMono Nerd Font" ];
      sansSerif = [ "IBM Plex Sans" "IBM Plex Sans JP" ];
      serif = [ "IBM Plex Serif" ];
    };
  };
}
