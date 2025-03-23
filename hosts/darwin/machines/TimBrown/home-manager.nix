let
  kittyModule = {
    programs.kitty = {
      font.size = 13;
    };
  };
in {
  home-manager.sharedModules = [
    kittyModule
  ];
}
