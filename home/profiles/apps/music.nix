{
  config,
  pkgs,
  lib,
  ...
}: let
  tidal-hifi = pkgs.tidal-hifi.overrideAttrs (o: {
    postFixup =
      o.postFixup
      + ''
        substituteInPlace $out/share/applications/tidal-hifi.desktop \
          --replace "Exec=/opt/tidal-hifi/tidal-hifi" "Exec=$out/bin/tidal-hifi" \
          --replace "Name=tidal-hifi" "Name=TIDAL"
      '';
  });
in
  lib.mkIf pkgs.stdenv.isLinux {
    home.packages =
      (with pkgs; [
        playerctl
        rescrobbled
      ])
      ++ [tidal-hifi];

    home.persistence."/persist/home/${config.home.username}" = {
      directories = [
        ".config/tidal-hifi"
        ".config/rescrobbled"
        ".config/pulse"
      ];
    };

    xdg.mimeApps.defaultApplications = {
      "x-scheme-handler/tidal" = ["tidal-hifi.desktop"];
    };

    services.playerctld.enable = true;

    xdg.configFile."rescrobbled/config.toml".source =
      config.lib.file.mkOutOfStoreSymlink "/run/agenix/lastfm-rescrobbled-config";

    systemd.user.services.rescrobbled = {
      Unit = {
        Description = "An MPRIS scrobbler";
        Documentation = "https://github.com/InputUsername/rescrobbled";
        After = ["graphical-session-pre.target"];
        PartOf = ["graphical-session.target"];
      };

      Install = {WantedBy = ["graphical-session.target"];};

      Service = {
        ExecStart = "${pkgs.rescrobbled}/bin/rescrobbled";
        Restart = "always";
        RestartSec = 5;
        RuntimeMaxSec = "900s"; # Restart after 15 minutes to prevent timeouts
      };
    };
  }
