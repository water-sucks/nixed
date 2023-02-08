{
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    armcord
  ];

  xdg.configFile = {
    "ArmCord/themes/DarkDiscord/DarkDiscord.css".text = ''
      @import url(https://discord-modifications.github.io/dark-discord/src/source.css);
    '';
    "ArmCord/themes/DarkDiscord/manifest.json".text = builtins.toJSON {
      name = "DarkDiscord";
      author = "discord-modifications";
      theme = "DarkDiscord.css";
    };
  };
}
