{ self, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    bitwarden
  ];
}
