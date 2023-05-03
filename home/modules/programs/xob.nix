{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.programs.xob;

  generate = lib.generators.toPretty {};
in {
  options.programs.xob = {
    enable = mkEnableOption "X11 overlay bar";

    package = mkOption {
      type = types.package;
      default = pkgs.xob;
      description = "Package to use for xob";
    };

    style = mkOption {
      type = types.str;
      default = "";
      description = "Style to enable for xob";
    };

    styles = mkOption {
      type = types.attrs;
      default = {};
      example = literalExpression ''
        {
          style_name = {
            x = {relative = 1; offset = -48;};
            y = {relative = 0.5; offset = 0;};
            length = {relative = 0.3; offset = 0;};
          };
        }
      '';
      description = "Styles configuration for xob";
    };
  };

  config = mkIf cfg.enable {
    assertions = let
      styles = attrNames cfg.styles;
    in [
      (hm.assertions.assertPlatform "programs.xob" pkgs platforms.linux)
      {
        assertion = elem cfg.style styles;
        message = ''
          ${cfg.style} is not in the list of styles.
          Available styles are:
            * ${concatStringsSep "\n  * " styles}
        '';
      }
    ];

    home.packages = [cfg.package];

    xdg.configFile."xob/styles.cfg".text =
      builtins.concatStringsSep "\n" (mapAttrsToList (name: style: "${name} = ${generate style};") cfg.styles);

    systemd.user.services.xob = {
      Unit = {
        Description = "X overlay bar";
        PartOf = ["graphical-session.target"];
        After = ["graphical-session-pre.target"];
      };

      Install.WantedBy = ["graphical-session.target"];

      Service = {
        ExecStart = "${cfg.package}/bin/xob -c ${config.xdg.configHome}/xob/styles.cfg -s ${cfg.style}";
        StandardInput = "socket";
        Restart = "on-failure";
        RestartSec = 1;
      };
    };

    systemd.user.sockets.xob = {
      Socket = {
        ListenFIFO = "%t/xob.sock";
        SocketMode = 0600;
      };

      Install.WantedBy = ["sockets.target" "graphical-session.target"];
    };
  };
}
