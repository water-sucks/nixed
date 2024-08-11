{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;

  armcord = pkgs.armcord.overrideAttrs (o: rec {
    version = "3.2.8";
    src = pkgs.fetchFromGitHub {
      owner = "ArmCord";
      repo = "ArmCord";
      rev = "v${version}";
      hash = "sha256-H/Y3xA7gE24UsUkrxmrRFSvs16qZCVxli9vdnt7ihi8=";
    };
    pnpmDeps = pkgs.pnpm.fetchDeps {
      inherit (o) pname;
      inherit version src;
      hash = "sha256-hYp1XbWQL5NbIzzUSnZ7y7V+vYQmymRNo+EiSjn5d9E=";
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
          # This is a little strange, but we're keeping both in case
          # the code gets any weirder when dealing with case-insensitive
          # file systems
          ".config/armcord"
          ".config/ArmCord"
        ];
      };
    })
    {
      home.file = let
        target =
          if isDarwin
          then "Library/Application Support/ArmCord/themes/OLED"
          else ".config/ArmCord/themes/OLED";
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
