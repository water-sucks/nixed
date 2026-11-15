{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux isDarwin;

  tidal-hifi = pkgs.writeShellApplication {
    name = "tidal-hifi";
    runtimeInputs = [
      pkgs.tidal-hifi
    ];
    text = ''
      export PULSE_LATENCY_MSEC=60
      exec tidal-hifi "$@"
    '';
  };
in
  lib.mkMerge [
    (lib.mkIf isLinux {
      home.packages = [
        tidal-hifi
      ];

      xdg.desktopEntries.tidal-hifi = {
        name = "TIDAL Hi-Fi";
        exec = "tidal-hifi --no-sandbox";
        icon = "tidal-hifi";
        terminal = false;
      };

      persistence = {
        directories = [
          ".config/tidal-hifi"
        ];
      };

      xdg.mimeApps.defaultApplications = {
        "x-scheme-handler/tidal" = ["TIDAL Hi-Fi.desktop"];
      };
    })
    (lib.mkIf isDarwin {
      homebrew.casks = [
        "tidal"
      ];
    })
  ]
