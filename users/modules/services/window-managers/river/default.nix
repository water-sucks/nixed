{
  config,
  pkgs,
  lib,
  ...
}:
with lib; let
  cfg = config.wayland.windowManager.river;
in {
  options.wayland.windowManager.river = {
    enable = mkEnableOption "river Wayland compositor";

    init = mkOption {
      type = types.lines;
      default = "";
      description = "Script invoked on startup by river";
    };
  };

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      river
    ];

    xdg.configFile."river/init".source = pkgs.writeShellScript "river-init.sh" cfg.init;
  };
}
