{
  boot.loader = {
    efi.canTouchEfiVariables = true;

    timeout = 0;
    systemd-boot = {
      enable = true;
      editor = false;
      configurationLimit = 100;
    };
  };
}
