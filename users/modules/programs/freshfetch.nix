{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.programs.freshfetch;
in
{
  options.programs.freshfetch = {
    enable = mkEnableOption "A fresh take on neofetch";

    art = mkOption {
      type = types.lines;
      default = "";
      description = "Lua script to print custom ASCII art";
    };

    info = mkOption {
      type = types.lines;
      default = "";
      description = "Lua script to print system info";
    };

    layout = mkOption {
      type = types.lines;
      default = "";
      description = "Lua script to control freshfetch layout";
    };
  };

  config = mkIf cfg.enable {
    xdg.configFile."freshfetch/art.lua" = mkIf (cfg.art != "") { text = cfg.art; };
    xdg.configFile."freshfetch/info.lua" = mkIf (cfg.info != "") { text = cfg.info; };
    xdg.configFile."freshfetch/layout.lua" = mkIf (cfg.layout != "") { text = cfg.layout; };

    home.packages = [
      pkgs.freshfetch
    ];
  };
}
