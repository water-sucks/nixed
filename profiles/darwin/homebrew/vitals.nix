{ self, config, pkgs, ... }:

{
  homebrew.casks = [
    "firefox"
    "brave-browser"
    "kitty"
  ];

  homebrew.brews = [
    "fileicon"
  ];
}
