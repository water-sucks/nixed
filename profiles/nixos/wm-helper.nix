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
  };

  environment.variables = {
    GTK_THEME = "Orchis:dark";
  };

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
