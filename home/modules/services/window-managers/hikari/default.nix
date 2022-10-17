{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.wayland.windowManager.hikari;

  jsonFormat = pkgs.formats.json {};
in {
  options.wayland.windowManager.hikari = {
    enable = mkEnableOption "Hikari Wayland compositor";

    autostart = mkOption {
      type = types.lines;
      default = "";
      description = "Autostart script ran on Hikari startup";
    };

    debug = mkOption {
      type = types.bool;
      default = false;
      description = "Run Hikari in debug mode";
    };

    config = mkOption {
      type = types.lines;
      default = '''';
      description = "Configuration file, specified as UCL. Overrides settings if present";
    };

    settings = mkOption {
      type = types.attrs;
      default = {};
      description = "Nix-style settings configuration for Hikari";
    };
  };

  config = let
    sturcturedConfig = jsonFormat.generate "hikari.conf" cfg.settings;
    rawConfig = writeTextFile {
      name = "hikari.conf";
      text = cfg.config;
    };

    hikariPackage =
      if cfg.debug
      then
        pkgs.hikari.overrideAttrs
        (o: {
          makeFlags = o.makeFlags ++ ["DEBUG=YES"];
        })
      else pkgs.hikari;
  in
    mkIf cfg.enable {
      assertions = with lib; [
        (hm.assertions.assertPlatform "wayland.windowManager.hikari" pkgs platforms.linux)
      ];

      xdg.configFile."hikari/hikari.conf".source =
        if stringLength cfg.config > 0
        then rawConfig
        else sturcturedConfig;
      xdg.configFile."hikari/autostart".text = cfg.autostart;

      home.packages = [
        hikariPackage
      ];
    };
}
