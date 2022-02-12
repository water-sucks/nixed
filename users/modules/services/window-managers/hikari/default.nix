{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.wayland.windowManager.hikari;
in
{
  options.wayland.windowManager.hikari = {
    enable = mkEnableOption "hikari Wayland compositor";

    autostart = mkOption {
      type = types.lines;
      default = "";
      description = "Autostart script ran on Hikari startup.";
    };

    config = mkOption {
      type = types.lines;
      default = builtins.readFile ./hikari-default.conf;
      description = "Configuration file for Hikari";
    };
  };

  config = mkIf cfg.enable {
    xdg.configFile."hikari/hikari.conf".text = cfg.config;
    xdg.configFile."hikari/autostart".text = cfg.autostart;

    home.packages = [
      pkgs.hikari
    ];
  };
}
