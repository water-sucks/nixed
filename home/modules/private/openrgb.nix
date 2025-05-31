{
  config,
  pkgs,
  lib,
  ...
}: let
  cfg = config.openrgb;
in {
  options.openrgb.profile = lib.mkOption {
    type = with lib.types; nullOr str;
    default = null;
    description = "OpenRGB profile name to activate on login";
  };

  config = lib.mkIf (cfg.profile != null) {
    assertions = with lib; [
      (hm.assertions.assertPlatform "openrgb.profile" pkgs platforms.linux)
    ];
  };
}
