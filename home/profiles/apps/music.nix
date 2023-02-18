{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    tidal-hifi
    playerctl
    rescrobbled
  ];

  home.persistence."/persist/home/${config.home.username}" = {
    directories = [
      ".config/tidal-hifi"
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
