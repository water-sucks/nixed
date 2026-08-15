{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isDarwin;
in {
  fonts = {
    packages = with pkgs; [
      berkeley-mono
      ibm-plex
      nerd-fonts.blex-mono
      font-awesome
      noto-fonts
    ];
    fontDir.enable = lib.mkIf (!isDarwin) true;
  };
}
