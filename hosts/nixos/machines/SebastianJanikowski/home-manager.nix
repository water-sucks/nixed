let
  kanshiModule = {
    services.kanshi = {
      settings = [
        {
          profile.name = "default";
          profile.outputs = [
            {
              criteria = "eDP-1";
              scale = 2.0;
            }
          ];
        }
      ];
    };
  };
in {
  home-manager.sharedModules = [
    kanshiModule
  ];
}
