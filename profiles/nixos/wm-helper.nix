{
  self,
  config,
  lib,
  pkgs,
  ...
}: {
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
    windowManager.leftwm.enable = true;
    desktopManager.xterm.enable = false;
  };

  environment.variables = {
    GTK_THEME = "Orchis:dark";
  };
}
