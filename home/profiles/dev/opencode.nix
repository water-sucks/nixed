{lib, ...}: {
  options = {
    # This option will only be enabled on home-manager systems that have
    # access to a local AI engine for now.
    profiles.opencode.enable = lib.mkEnableOption "opencode config profile";
  };

  config = {
    programs.opencode = {
      enable = true;
      # TODO: add darkrose theme
    };
  };
}
