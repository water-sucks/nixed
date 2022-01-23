{ self, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    spotify
    spicetify-cli
    playerctl
  ];
}
