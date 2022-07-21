{ self, config, pkgs, lib, ... }:

let
  inherit (pkgs.stdenv) isLinux;
in
lib.mkMerge [
  {
    fonts = {
      fonts = with pkgs; [
        ibm-plex
        (nerdfonts.override { fonts = [ "IBMPlexMono" ]; })
        font-awesome
      ];
      fontDir.enable = true;
    };
  }
  (lib.mkIf isLinux {
    fonts.fontconfig.defaultFonts = {
      monospace = [ "BlexMono Nerd Font" ];
      sansSerif = [ "IBM Plex Sans" "IBM Plex Sans JP" ];
      serif = [ "IBM Plex Serif" ];
    };
  })
]
