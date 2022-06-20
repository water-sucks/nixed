{ self, config, pkgs, lib, ... }:

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
