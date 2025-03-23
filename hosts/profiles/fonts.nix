{
  pkgs,
  lib,
  ...
}: {
  fonts = {
    packages = with pkgs; [
      berkeley-mono
      ibm-plex
      nerd-fonts.blex-mono
      font-awesome
      noto-fonts
    ];
    fontDir.enable = lib.mkIf (!pkgs.stdenv.isDarwin) true;
  };
}
