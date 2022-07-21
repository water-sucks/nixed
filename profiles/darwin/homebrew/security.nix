{ self, config, pkgs, ... }:

{
  homebrew.casks = [
    "bitwarden"
    "protonvpn"
    "tor-browser"
  ];
}
