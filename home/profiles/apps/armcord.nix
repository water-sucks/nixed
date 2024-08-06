{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;

  armcord = pkgs.armcord.overrideAttrs (o: rec {
    version = "3.3.0-dev";
    src = pkgs.fetchFromGitHub {
      owner = "ArmCord";
      repo = "ArmCord";
      rev = "122601b0211847648e553398a67a43e760c129c6";
      hash = "sha256-VWPzTljwfG+/JLUYlWJLiy3dXf9NeunR3eQhDUR2DEg=";
    };
    pnpmDeps = pkgs.pnpm.fetchDeps {
      inherit (o) pname;
      inherit version src;
      hash = "sha256-y/y1lpTWqcf/aLj5GBxGfRbK2XVF6rkjRLA/TXa3X6Q=";
    };
    desktopItems = [
      (pkgs.makeDesktopItem {
        name = "armcord";
        desktopName = "ArmCord";
        exec = "armcord %U";
        icon = "armcord";
        comment = o.meta.description;
        categories = ["Network"];
        startupWMClass = "ArmCord";
        terminal = false;
      })
    ];
  });
in
  lib.mkMerge [
    (lib.mkIf isLinux {
      home.packages = [
        armcord
      ];

      home.persistence.${config.persistence.directory} = {
        directories = [
          ".config/armcord"
        ];
      };
    })
    {
      home.file = let
        target =
          if isDarwin
          then "Library/Application Support/armcord/themes/OLED"
          else ".config/armcord/themes/OLED";
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
