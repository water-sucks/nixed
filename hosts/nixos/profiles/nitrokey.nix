{pkgs, ...}: {
  hardware.nitrokey.enable = true;

  environment.systemPackages = [
    pkgs.pynitrokey
  ];
}
