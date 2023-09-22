{pkgs, ...}: {
  hardware.bluetooth = {
    enable = true;
    package = pkgs.bluez;
  };
}
