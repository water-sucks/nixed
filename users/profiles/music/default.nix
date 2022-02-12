{ self, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    spotify
    spicetify-cli
    tidal-hifi
  ];

  services.playerctld.enable = true;
}
