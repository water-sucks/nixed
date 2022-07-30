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

    windowManager.leftwm.enable = true;
    displayManager.defaultSession = "none+leftwm";
  };

  environment.variables = {
    GTK_THEME = "Orchis:dark";
  };
}
