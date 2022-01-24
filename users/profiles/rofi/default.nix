{ self, config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    font = "IBM Plex Mono 13";
    location = "center";
    plugins = with pkgs; [
      rofi-calc
    ];
    terminal = "${pkgs.kitty}/bin/kitty";
    theme = "purple";
  };
}
