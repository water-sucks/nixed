{
  self,
  config,
  pkgs,
  ...
}: {
  homebrew.casks = [
    "bitwarden"
    "protonvpn"
    "tor-browser"
    "i2p"
  ];
}
