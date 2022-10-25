{pkgs, ...}: {
  hardware.nitrokey.enable = true;

  environment.systemPackages = with pkgs; [
    pynitrokey
  ];
}
