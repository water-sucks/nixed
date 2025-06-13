let
  kittyModule = {
    programs.kitty = {
      font.size = 13;
    };
  };

  wallpaperModule = {
    services.darwin-wallpaper.file = ../../../../assets/woah.jpg;
  };

  disabledHMProfilesModule = {
    profiles = {
      apps.messaging.enable = false;
    };
  };
in {
  home-manager.sharedModules = [
    disabledHMProfilesModule
    kittyModule
    wallpaperModule
  ];
}
