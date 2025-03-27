let
  kittyModule = {
    programs.kitty = {
      font.size = 13;
    };
  };

  wallpaperModule = {
    services.darwin-wallpaper.file = ../../../../assets/city.jpg;
  };
in {
  home-manager.sharedModules = [
    kittyModule
    wallpaperModule
  ];
}
