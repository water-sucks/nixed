{ config, pkgs, ... }:

{
  # Graphics support
  hardware.opengl = {
    enable = true;
    driSupport = true;
  };

  # Sound support with PipeWire/PulseAudio
  sound.enable = true;
  hardware.pulseaudio.enable = false;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = false;
    pulse.enable = true;
    jack.enable = true;
    socketActivation = true;
  };

  # Theming helpers
  programs.dconf.enable = true;
  services.dbus.packages = with pkgs; [ dconf ];

  # Permissions for /dev/uinput (for ydotool to work on user side)
  services.udev.extraRules = ''
    KERNEL==”uinput”, GROUP=”uinput”, MODE:=”0660″
  '';

  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = false;
    displayManager.startx.enable = true;
    layout = "us";
    libinput.enable = true;
    windowManager.berry.enable = true;
  };
}
