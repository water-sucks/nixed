{pkgs, ...}: {
  boot = {
    # Make systemd and other related stuff shut up
    consoleLogLevel = 0;
    kernelParams = [
      "quiet"
      "splash"
      # "loglevel=1"
      "rd.systemd_show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
      "boot.shell_on_fail"
    ];

    plymouth = {
      enable = true;
      font = "${pkgs.ibm-plex}/share/fonts/opentype/IBMPlexSans-Text.otf";
      # theme = "anarchist";
      # themePackages = with pkgs; [
      #   plymouth-anarchist-theme
      # ];
    };
  };
}
