{pkgs, ...}: {
  hardware.nitrokey.enable = true;

  environment.systemPackages = with pkgs; [
    pr195816.pynitrokey
  ];
}
