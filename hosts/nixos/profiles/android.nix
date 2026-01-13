{pkgs, ...}: {
  environment.systemPackages = [
    pkgs.android-tools
  ];
}
