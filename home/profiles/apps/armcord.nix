{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;
in
  lib.mkMerge [
    (lib.mkIf isLinux {
      home.packages = [
        pkgs.legcord
      ];

      home.persistence.${config.persistence.directory} = {
        directories = [
          ".config/legcord"
        ];
      };
    })
    {
      home.file = let
        target =
          if isDarwin
          then "Library/Application Support/legcord/themes/OLED"
          else ".config/legcord/themes/OLED";
      in {
        "${target}/oled.theme.css".text = ''
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
        "${target}/manifest.json".text = builtins.toJSON {
          name = "OLED";
          author = "dimden";
          theme = "oled.theme.css";
        };
      };
    }
  ]
