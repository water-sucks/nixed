{ config, pkgs, ... }:

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

  services.earlyoom.enable = true;

  system.stateVersion = "21.11";
}

