{
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    discord
    element-desktop
    signal-desktop
    slack
    skypeforlinux
    teams
  ];
}
