{ self, config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vulkan-tools
  ];

  # Graphics support
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  # Theming helpers
  programs.dconf.enable = true;
  services.dbus.packages = with pkgs; [ dconf ];

  services.udev.extraRules = ''
    # Allow members of uinput access to /dev/uinput for ydotool
    KERNEL=="uinput", SUBSYSTEM=="misc", TAG+="uaccess", OPTIONS+="static_node=uinput", GROUP="input", MODE="0660"

    # Allow all users to write to backlight to change brightness
    ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="amdgpu_bl0", MODE="0666", RUN+="${pkgs.coreutils}/bin/chmod a+w /sys/class/backlight/%k/brightness"
  '';

  services.xserver = {
    enable = true;
    videoDrivers = [ "modesetting" ];
    layout = "us";
    libinput.enable = true;
    windowManager.berry.enable = true;
    desktopManager.xterm.enable = false;
  };

  # Screenshare support (disabled for now, interfering with startup)
  # Use berry if you need screenshare support
  # xdg.portal = {
  #   enable = true;
  #   extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
  #   gtkUsePortal = true;
  # };

  # Oof, I need Xwayland for fcitx5 input.
  programs.xwayland.enable = true;
}
