{
  pkgs,
  lib,
  ...
}: {
  fonts = {
    packages = with pkgs; [
      ibm-plex
      (nerdfonts.override {fonts = ["IBMPlexMono"];})
      font-awesome
    ];
    fontDir.enable = lib.mkIf (!pkgs.stdenv.isDarwin) true;
  };
}
