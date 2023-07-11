{pkgs, ...}: {
  # Graphics support
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  # Theming helpers
  programs.dconf.enable = true;
  services.dbus.packages = with pkgs; [dconf];

  services.xserver = {
    enable = true;
    videoDrivers = ["modesetting"]; # Base, all hosts should set accordingly
    layout = "us";

    libinput.enable = true;

    desktopManager.xterm.enable = false;

    displayManager.sessionPackages = with pkgs; [river];
    displayManager.defaultSession = "none+leftwm";
    windowManager.leftwm.enable = true;
  };

  # Allow for user sessions to start the graphical session target in their init scripts
  systemd.user.targets.graphical-session = {
    unitConfig = {
      RefuseManualStart = false;
      StopWhenUnneeded = false;
    };
  };

  environment.systemPackages = with pkgs; [river];

  environment.variables = {
    NIXOS_OZONE_WL = "1";
  };

  security.rtkit.enable = true; # To stop xdg-desktop-portal from complaining about it

  xdg = {
    sounds.enable = false;
    portal = {
      enable = true;
      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
      ];
      wlr = {
        enable = true;
        settings.screencast = {
          chooser_type = "simple";
          chooser_cmd = "${pkgs.slurp}/bin/slurp -f %o -or";
        };
      };
    };
  };

  systemd.user.services.xdg-desktop-portal-gtk = {
    unitConfig = {
      StartLimitIntervalSec = 0;
    };

    serviceConfig = {
      Restart = "on-failure";
      RestartSec = 1;
    };
  };
}
