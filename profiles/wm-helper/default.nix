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
}
