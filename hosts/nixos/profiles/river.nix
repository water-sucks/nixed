{pkgs, ...}: {
  services.displayManager.sessionPackages = with pkgs; [river];

  environment.systemPackages = with pkgs; [river];
}
