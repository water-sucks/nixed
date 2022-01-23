{ self, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    wofi
    gtk-layer-shell
  ];

  wayland.windowManager.hikari = {
    enable = true;
    config = builtins.readFile ./hikari.conf;
  };

  programs.mako.enable = true;

  xdg.configFile."wallpapers/PurpleRedStuff.png".source = ./PurpleRedStuff.png;
}
