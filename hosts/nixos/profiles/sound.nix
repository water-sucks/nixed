_: {
  services.pulseaudio.enable = false;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    socketActivation = true;

    wireplumber = {
      enable = true;
      extraConfig = {
        "disable-suspend" = {
          "monitor.alsa.rules" = [
            {
              matches = [
                {
                  "device.name" = "~alsa_input.*";
                }
                {
                  "device.name" = "~alsa_output.*";
                }
              ];
              actions = {
                update-props = {
                  "session.suspend-timeout-seconds" = 0;
                };
              };
            }
          ];
        };
      };
    };
  };
}
