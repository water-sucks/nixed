{
  self,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
  ];

  time.timeZone = "America/Los_Angeles";

  networking = {
    hostName = "HunterRenfrow";
    useDHCP = false;
    usePredictableInterfaceNames = false;
    networkmanager = {
      enable = true;
      dns = "none";
    };
  };

  age.secrets.varun-user-HunterRenfrow.file = "${self}/secrets/varun-user-HunterRenfrow.age";
  users.users.varun.passwordFile = "/run/agenix/varun-user-HunterRenfrow";

  age.secrets.root-user-HunterRenfrow.file = "${self}/secrets/root-user-HunterRenfrow.age";
  users.users.root.passwordFile = "/run/agenix/root-user-HunterRenfrow";

  services.udev.extraRules = ''
    # Allow all users to write to backlight to change brightness
    ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="amdgpu_bl0", MODE="0666", RUN+="${pkgs.coreutils}/bin/chmod a+w /sys/class/backlight/%k/brightness"
  '';

  services.earlyoom.enable = true;

  system.stateVersion = "22.05";
}
