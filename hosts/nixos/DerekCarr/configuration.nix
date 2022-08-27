{
  self,
  lib,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
  ];

  time.timeZone = "America/Los_Angeles";

  networking = {
    hostName = "DerekCarr";
    hostId = "8e004b0f";
    useDHCP = false;
    networkmanager = {
      enable = true;
      dns = "none";
    };
  };

  i18n.defaultLocale = "en_US.UTF-8";

  age.secrets.varun-user-DerekCarr.file = "${self}/secrets/varun-user-DerekCarr.age";
  users.users.varun.passwordFile = "/run/agenix/varun-user-DerekCarr";

  age.secrets.root-user-DerekCarr.file = "${self}/secrets/root-user-DerekCarr.age";
  users.users.root.passwordFile = "/run/agenix/root-user-DerekCarr";

  home-manager.sharedModules = [
    {
      services.polybar.config."module/wlan".interface = lib.mkForce "wlp6s0";
      services.polybar.config."bar/oofbar".modules-right = lib.mkForce "input dot storage dot cpu dot mem dot audio dot bluetooth dot wlan dot date spacer launcher";
    }
  ];

  services.earlyoom.enable = true;

  system.stateVersion = "21.11";
}
