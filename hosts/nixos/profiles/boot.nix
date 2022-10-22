_: {
  boot.loader = {
    efi.canTouchEfiVariables = true;

    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
      zfsSupport = true;
      enableCryptodisk = true;
      splashImage = null;
    };
  };
}
