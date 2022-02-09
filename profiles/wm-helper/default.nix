{ self, config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    xdotool
    pamixer
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

  # Bluetooth support
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

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

  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [ fcitx5-mozc ];
  };
}
