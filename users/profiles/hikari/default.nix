{ self, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    wofi
    gtk-layer-shell
    ydotool
  ];

  wayland.windowManager.hikari = {
    enable = true;
    config = builtins.readFile ./hikari.conf;
  };
}
