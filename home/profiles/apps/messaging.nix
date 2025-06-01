{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;
in
  lib.mkMerge [
    (lib.mkIf isLinux {
      home.packages = with pkgs; [
        element-desktop
        signal-desktop
        slack
        zoom-us
      ];

      persistence = {
        directories = [
          ".config/Element"
          ".config/Signal"
          ".config/Slack"
        ];
        files = [
          ".config/zoom.conf"
          ".config/zoomus.conf"
        ];
      };
    })
    (lib.mkIf isDarwin {
      homebrew.casks = [
        "element"
        "signal"
        "slack"
        "zoom"
      ];
    })
  ]
