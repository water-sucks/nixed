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
      "ArmCord/homebrew-armcord"
    ];
  };
}
