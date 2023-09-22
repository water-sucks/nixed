{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;

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
    pkgs.armcord.overrideAttrs (_: rec {
      version = "3.2.3";
      src = let
        base = "https://github.com/ArmCord/ArmCord/releases/download";
      in
        {
          x86_64-linux = pkgs.fetchurl {
            url = "${base}/v${version}/ArmCord_${version}_amd64.deb";
            hash = "sha256-d8Xv9ecXxkUAIqCS82VKlLNne56hESYvYtSDvNvGul0=";
          };
          aarch64-linux = pkgs.fetchurl {
            url = "${base}/v${version}/ArmCord_${version}_arm64.deb";
            hash = "sha256-yqZ4hl+E4IEEEuKhfyDYY1Lyz5/Nekrf8uxoJr1B8w8=";
          };
        }
        .${pkgs.stdenv.hostPlatform.system}
        or (throw "Unsupported system: ${pkgs.stdenv.hostPlatform.system}");
      postInstall = ''
        wrapProgram $out/bin/armcord --prefix PATH : "${pristineXdgOpen}/bin"
      '';
    });
in
  lib.mkMerge [
    (lib.mkIf pkgs.stdenv.isLinux {
      home.packages = [
        armcord
      ];

      home.persistence."/persist/home/${config.home.username}" = {
        directories = [
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
