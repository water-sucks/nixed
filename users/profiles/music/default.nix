{ self, config, pkgs, lib, ... }:

lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    spotify
    spicetify-cli
    tidal-hifi
  ];

  services.playerctld.enable = true;
}
