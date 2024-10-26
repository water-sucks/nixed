({lib, ...}: {
  options.openrgb.profile = lib.mkOption {
    type = with lib.types; nullOr str;
    description = "OpenRGB profile name to activate on login";
  };
})
