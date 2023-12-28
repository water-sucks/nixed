{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux;
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
    })
  ]
