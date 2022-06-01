{ self, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    discord
    element-desktop
    signal-desktop
    slack
    zoom-us
    skypeforlinux
  ];
}
