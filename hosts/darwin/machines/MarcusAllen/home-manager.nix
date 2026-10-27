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

    programs.git.includes = let
      neuralinkGitIdentity = {
        user.email = "varun.narravula@neuralink.com";
        user.signingKey = "581C248DE2997222";
      };
    in
      map
      (condition: {
        inherit condition;
        contents = neuralinkGitIdentity;
      })
      [
        "hasconfig:remote.*.url:git@git.int.n7k.io:*/**"
        "hasconfig:remote.*.url:ssh://git@git.int.n7k.io/**"
        "hasconfig:remote.*.url:https://git.int.n7k.io/**"
      ];
  };
}
