{ self, config, pkgs, ... }:

{
  xdg.configFile = {
    "wallpapers/PurpleRedStuff.png".source = ./PurpleRedStuff.png;
    # "wallpapers/torii.png".source = ./torii.png;
    "wallpapers/clouds.png".source = ./clouds.png;
  };
}
