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
      "ArmCord/themes/OLED/oled.theme.css".text = ''
        @import url(https://dimdengd.github.io/discord-oled-theme/code.css);

        :is(:root, .theme-dark) {
          --background-primary: black !important;
          --background-secondary: black !important;
          --background-tertiary: black !important;
          --background-secondary-alt: black !important;
          --background-accent: black !important;
          --button-secondary-background: hsl(0 0% 10%) !important;
          --activity-card-background: black;
          --home-background: black !important;
        }
      '';
      "ArmCord/themes/OLED/manifest.json".text = builtins.toJSON {
        name = "OLED";
        author = "dimden";
        theme = "oled.theme.css";
      };
    };
  }
