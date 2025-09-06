{pkgs, ...}: {
  services.displayManager.sessionPackages = with pkgs; [river-classic];

  environment.systemPackages = with pkgs; [river-classic];
}
