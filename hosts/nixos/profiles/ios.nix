{
  pkgs,
  lib,
  ...
}: {
  environment.systemPackages = with pkgs; [
    libimobiledevice
    ifuse
  ];

  services.usbmuxd = {
    enable = true;
    package = pkgs.usbmuxd2;
  };

  systemd.services.usbmuxd = {
    serviceConfig.ExecStartPre = lib.mkForce "${pkgs.systemd}/bin/udevadm trigger -s usb -a idVendor=05ac";
  };
}
