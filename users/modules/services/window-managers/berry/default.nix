{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.xsession.windowManager.berry;
in {
  options.xsession.windowManager.berry = {
    enable = mkEnableOption "berry window manager";

    autostart = mkOption {
      type = types.lines;
      default = "";
      description = "Autostart script ran on berry startup.";
    };
  };

  config = mkIf cfg.enable {
    xdg.configFile."berry/autostart".text = cfg.autostart;

    home.packages = [
      pkgs.berry
    ];
  };
}
