{ self, config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  time.timeZone = "America/Los_Angeles";

  networking = {
    hostName = "TheBeastNix";
    useDHCP = false;
    networkmanager = {
      enable = true;
      insertNameservers = [ "1.1.1.1" "1.0.0.1" "2606:4700:4700::1111" "2606:4700:4700::1001" ];
      dns = "none";
    };
  };

  i18n.defaultLocale = "en_US.UTF-8";

  services.openssh = {
    enable = true;
    openFirewall = true;
  };

  age.secrets.varun-user-TheBeastNix.file = "${self}/secrets/varun-user-TheBeastNix.age";
  users.users.varun.passwordFile = "/run/agenix/varun-user-TheBeastNix";

  age.secrets.root-user-TheBeastNix.file = "${self}/secrets/root-user-TheBeastNix.age";
  users.users.root.passwordFile = "/run/agenix/root-user-TheBeastNix";

  services.earlyoom.enable = true;

  system.stateVersion = "21.11";
}

