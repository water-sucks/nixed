{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;

  atuin = "${config.programs.atuin.package}/bin/atuin";
in
  lib.mkMerge [
    {
      programs.atuin = {
        enable = true;
        flags = [];
        settings = {
          update_check = false;
          sync_frequency = "15m";
          search_mode = "fuzzy";
          inline_height = 33;
          enter_accept = "false";
          common_subcommands = ["nixos"];
          common_prefix = ["sudo"];
          daemon = {
            enabled = true;
          };
        };
      };
      programs.zsh.initExtra = ''
        bindkey '^r' _atuin_search_widget
      '';
    }
    (lib.mkIf isLinux {
      home.persistence.${config.persistence.directory} = {
        directories = [
          ".local/share/atuin"
        ];
      };

      programs.atuin = {
        settings = {
          daemon = {
            systemd_socket = true;
          };
        };
      };
      home.sessionVariables = {
        ATUIN_DAEMON__SOCKET_PATH = "$XDG_RUNTIME_DIR/atuin.sock";
      };

      systemd.user.services.atuin-daemon = {
        Unit = {
          Description = "atuin daemon";
          Requires = ["atuin-daemon.socket"];
        };
        Install = {
          Also = ["atuin-daemon.socket"];
          WantedBy = ["default.target"];
        };
        Service = {
          ExecStart = "${atuin} daemon";
          Environment = [
            "ATUIN_LOG=info"
            "ATUIN_DAEMON__SOCKET_PATH=%t/atuin.sock"
          ];
          Restart = "on-failure";
          RestartSteps = 3;
          RestartMaxDelaySec = 6;
        };
      };

      systemd.user.sockets.atuin-daemon = {
        Unit = {
          Description = "atuin daemon socket";
        };
        Install = {
          WantedBy = ["sockets.target"];
        };
        Socket = {
          ListenStream = "%t/atuin.sock";
          SocketMode = "0600";
          RemoveOnStop = true;
        };
      };
    })
    (lib.mkIf isDarwin {
      launchd.agents.atuin-daemon = {
        enable = true;
        config = {
          ProgramArguments = ["${atuin}" "daemon"];
          EnvironmentVariables = {
            ATUIN_LOG = "info";
          };
          KeepAlive = {
            Crashed = true;
            SuccessfulExit = false;
          };
          ProcessType = "Background";
        };
      };
    })
  ]
