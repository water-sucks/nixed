{ self, config, pkgs, ... }:

{
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;
}
