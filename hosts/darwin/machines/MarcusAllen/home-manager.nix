let
  kittyModule = {
    programs.kitty = {
      font.size = 13;
    };
  };

  wallpaperModule = {
    services.darwin-wallpaper.file = ../../../../assets/moonscape.jpg;
  };
in {
  home-manager.sharedModules = [
    kittyModule
    wallpaperModule
  ];

  home-manager.users.varun = {
    profiles.messaging.slack.enable = false;
  };
}
