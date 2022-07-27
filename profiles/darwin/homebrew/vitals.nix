{
  self,
  config,
  pkgs,
  ...
}: {
  homebrew.casks = [
    "firefox"
    "brave-browser"
    "kitty"
    "filen"
  ];

  homebrew.brews = [
    "fileicon"
  ];
}
