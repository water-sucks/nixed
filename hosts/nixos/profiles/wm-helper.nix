{pkgs, ...}: {
  # Graphics support
  hardware.graphics = {
    enable = true;
  };

  # Theming helpers
  programs.dconf.enable = true;

  services = {
    dbus.packages = with pkgs; [dconf];

    displayManager.sessionPackages = with pkgs; [river];
    displayManager.defaultSession = "river";

    libinput.enable = true;

    xserver = {
      enable = true;
      videoDrivers = ["modesetting"]; # Base, all hosts should set accordingly
      xkb.layout = "us";

      desktopManager.xterm.enable = false;
      windowManager.leftwm.enable = true;
    };
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
      configPackages = [
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
