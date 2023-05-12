{
  config,
  pkgs,
  lib,
  ...
}: let
  armcord = let
    pristineXdgOpen =
      pkgs.runCommandWith {
        name = "pristine-xdg-open";
        derivationArgs.nativeBuildInputs = [pkgs.makeWrapper];
      } ''
        # Wrap xdg-open, unsetting `LD_LIBRARY_PATH` becuase it's used by
        # the `armcord` package to inject libraries at runtime; these conflict
        # with Firefox, etc.
        makeWrapper ${pkgs.xdg-utils}/bin/xdg-open $out/bin/xdg-open \
          --unset LD_LIBRARY_PATH
      '';
  in
    pkgs.armcord.overrideAttrs (_: {
      postInstall = ''
        wrapProgram $out/bin/armcord --prefix PATH : "${pristineXdgOpen}/bin"
      '';
    });
in
  lib.mkIf pkgs.stdenv.isLinux {
    home.packages = [
      armcord
    ];

    home.persistence."/persist/home/${config.home.username}" = {
      directories = [
        ".config/ArmCord"
      ];
    };

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
