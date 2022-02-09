{ self, config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  time.timeZone = "America/Los_Angeles";

  networking = {
    hostName = "HunterRenfrow";
    useDHCP = false;
    networkmanager = {
      enable = true;
      insertNameservers = [ "1.1.1.1" "1.0.0.1" "2606:4700:4700::1111" "2606:4700:4700:1001" ];
      dns = "none";
    };
  };

  services.openssh = {
    enable = true;
    openFirewall = true;
  };

  age.secrets.varun-user-HunterRenfrow.file = "${self}/secrets/varun-user-HunterRenfrow.age";
  users.users.varun.passwordFile = "/run/agenix/varun-user-HunterRenfrow";

  age.secrets.root-user-HunterRenfrow.file = "${self}/secrets/root-user-HunterRenfrow.age";
  users.users.root.passwordFile = "/run/agenix/root-user-HunterRenfrow";

  services.earlyoom.enable = true;

  system.stateVersion = "22.05";
}

