{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.programs.wob;

  generate = generators.toINIWithGlobalSection {};
in {
  options.programs.wob = {
    enable = mkEnableOption "Wayland overlay bar";

    # I'm lazy, so I'm just going to specify the global
    # sectioninside my config.
    settings = mkOption {
      type = types.attrs;
      default = {};
      description = "Configuration for wob";
    };
  };

  config = mkIf cfg.enable {
    xdg.configFile."wob/wob.ini".text = generate cfg.settings;

    systemd.user.services.wob = {
      Unit = {
        Description = "Wayland overlay bar";
        PartOf = ["graphical-session.target"];
        After = ["graphical-session-pre.target"];
      };

      Install.WantedBy = ["graphical-session.target"];

      Service = {
        ExecStart = "${pkgs.wob}/bin/wob";
        StandardInput = "socket";
        Restart = "on-failure";
        RestartSec = 1;
      };
    };

    systemd.user.sockets.wob = {
      Socket = {
        ListenFIFO = "%t/wob.sock";
        SocketMode = 0600;
      };

      Install.WantedBy = ["sockets.target" "graphical-session.target"];
    };
  };
}