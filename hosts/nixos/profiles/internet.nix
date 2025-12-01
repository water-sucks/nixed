{lib, ...}: let
  # Use Quad9 for default DNS nameservers
  defaultNameservers = [
    "9.9.9.9"
    "9.9.9.10"
    "9.9.9.11"
    "2620:fe::9"
    "2620:fe::10"
    "2620:fe::11"
  ];
in {
  # Use networkmanager for connecting to networks.
  networking = {
    useDHCP = false;
    usePredictableInterfaceNames = lib.mkDefault false;
    nameservers = defaultNameservers;
    networkmanager = {
      enable = true;
      dns = "default";
    };
  };

  # Avahi provides mDNS resolution for local networks.
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    publish = {
      enable = true;
      addresses = true;
      domain = true;
      hinfo = true;
      userServices = true;
      workstation = true;
    };
  };
}
