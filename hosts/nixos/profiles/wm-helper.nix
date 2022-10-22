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
    displayManager.defaultSession = "river";
    windowManager.leftwm.enable = true;
  };

  environment.systemPackages = with pkgs; [river];

  environment.variables = {
    GTK_THEME = "Orchis:dark";
  };

  security.rtkit.enable = true; # To stop xdg-desktop-portal from complaining about it

  xdg = {
    sounds.enable = false;
    portal = {
      enable = true;
      wlr = {
        enable = true;
        settings.screencast = {
          chooser_type = "simple";
          chooser_cmd = "${pkgs.slurp}/bin/slurp -f %o -or";
        };
      };
    };
  };
}
