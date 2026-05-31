{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;

  cfg = config.profiles.messaging;

  inherit (lib) mkIf mkMerge optional optionals;
  mkMessagingOption = name:
    lib.mkOption {
      type = lib.types.bool;
      description = "${name} messaging application";
      default = true;
    };
in {
  options.profiles.messaging = {
    slack.enable = mkMessagingOption "Slack";
    element.enable = mkMessagingOption "Element";
    zoom.enable = mkMessagingOption "Zoom";
    signal.enable = mkMessagingOption "Signal";
  };

  config = mkMerge [
    (mkIf isLinux {
      home.packages =
        optional cfg.slack.enable pkgs.slack
        ++ optional cfg.element.enable pkgs.element-desktop
        ++ optional cfg.zoom.enable pkgs.zoom-us
        ++ optional cfg.signal.enable pkgs.signal-desktop;

      persistence = {
        directories =
          optional cfg.slack.enable ".config/Slack"
          ++ optional cfg.element.enable ".config/Element"
          ++ optional cfg.signal.enable ".config/Signal";

        files = optionals cfg.zoom.enable [
          ".config/zoom.conf"
          ".config/zoomus.conf"
        ];
      };
    })
    (mkIf isDarwin {
      homebrew.casks =
        optional cfg.slack.enable "slack"
        ++ optional cfg.element.enable "element"
        ++ optional cfg.zoom.enable "zoom"
        ++ optional cfg.signal.enable "signal";
    })
  ];
}
