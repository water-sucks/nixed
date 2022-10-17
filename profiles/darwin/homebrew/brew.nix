_: {
  homebrew = {
    enable = true;
    global = {
      brewfile = true;
    };
    onActivation = {
      autoUpdate = true;
      upgrade = true;
    };
    taps = [
      "homebrew/cask"
      "homebrew/cask-versions"
    ];
  };
}
