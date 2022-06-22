{ self, config, pkgs, ... }:

{
  homebrew.casks = [
    "firefox"
    "kitty"
  ];

  homebrew.brews = [
    "fileicon"
  ];
}
