{pkgs, ...}: {
  hardware.gpgSmartcards.enable = true;

  programs.yubikey-touch-detector = {
    enable = true;
    libnotify = true;
  };

  services.pcscd.enable = true;

  services.udev.packages = [
    pkgs.yubikey-personalization
  ];
}
