{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux;

  atuinCfg = config.programs.atuin;
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

      systemd.user.services.atuind = {
        Unit = {
          Description = "atuin daemon";
        };
        Install = {
          WantedBy = ["default.target"];
        };
        Service = {
          ExecStart = "${atuinCfg.package}/bin/atuin daemon";
          Restart = "on-failure";
          RestartSec = 1;
          Environment = ["ATUIN_LOG=info"];
        };
      };
    })
  ]
