{ self, config, pkgs, lib, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  time.timeZone = "America/Los_Angeles";

  networking = {
    hostName = "DerekCarr";
    useDHCP = false;
    networkmanager = {
      enable = true;
      insertNameservers = [ "1.1.1.1" "1.0.0.1" "2606:4700:4700::1111" "2606:4700:4700::1001" ];
      dns = "none";
    };
  };

  i18n.defaultLocale = "en_US.UTF-8";

  age.secrets.varun-user-TheBeastNix.file = "${self}/secrets/varun-user-TheBeastNix.age";
  users.users.varun.passwordFile = "/run/agenix/varun-user-TheBeastNix";

  age.secrets.root-user-TheBeastNix.file = "${self}/secrets/root-user-TheBeastNix.age";
  users.users.root.passwordFile = "/run/agenix/root-user-TheBeastNix";

  home-manager.sharedModules = [
    {
      services.polybar.config."module/wlan".interface = lib.mkForce "wlp6s0";
      services.polybar.config."bar/oofbar".modules-right = lib.mkForce "input dot storage dot cpu dot mem dot audio dot bluetooth dot wlan dot date spacer launcher";
    }
  ];

  services.earlyoom.enable = true;

  system.stateVersion = "21.11";
}
