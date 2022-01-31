{ self, config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pulseaudio
  ];

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
    alsa.support32Bit = true;
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
    videoDrivers = [ "modesetting" ];
    displayManager = {
      lightdm = {
        enable = true;
        greeters.gtk = {
          enable = true;
          theme = {
            name = "Orchis-dark";
            package = pkgs.orchis-theme;
          };
          indicators = [
            "~clock"
            "~spacer"
            "~host"
            "~spacer"
            "~power"
          ];
          clock-format = "%H:%M:%S";
          extraConfig = ''
            [greeter]
            background=${self}/profiles/wm-helper/ice.png
          '';
        };
      };
      defaultSession = "none+berry";
    };
    layout = "us";
    libinput.enable = true;
    windowManager.berry.enable = true;
    desktopManager.xterm.enable = false;
  };

  systemd.services = {
    "kmsconvt@tty1.service".enable = false;
  };
}
