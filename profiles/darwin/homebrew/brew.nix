{ self, config, pkgs, ... }:

{

  homebrew = {
    enable = true;
    autoUpdate = true;
    global = {
      brewfile = true;
      noLock = true;
    };
    taps = [
      "homebrew/cask"
      "homebrew/cask-versions"
      "water-sucks/filen"
    ];
  };
}
