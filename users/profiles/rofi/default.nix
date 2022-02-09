{ self, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    rofi-power-menu
  ];

  programs.rofi = {
    enable = true;
    font = "IBM Plex Mono 13";
    location = "center";
    plugins = with pkgs; [
      rofi-calc
      rofi-power-menu
    ];
    terminal = "${pkgs.kitty}/bin/kitty";
    theme = "purple";
  };
}
