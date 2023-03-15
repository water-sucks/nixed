{
  config,
  self,
  lib,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
  ];

  time.timeZone = "America/Los_Angeles";

  networking = {
    hostId = "8e004b0f";
    useDHCP = false;
    networkmanager = {
      enable = true;
      dns = "none";
    };
  };

  i18n.defaultLocale = "en_US.UTF-8";

  xdg.portal.wlr.settings.screencast.output_name = "HDMI-A-1";

  # Workaround to use agenix with impermanence. I'll probably end up using sops-nix at some point
  # anyway so this workaround is fine, no need to be perfect.
  age.identityPaths = ["/persist/etc/ssh/ssh_host_rsa_key" "/persist/etc/ssh/ssh_host_ed25519_key"];

  age.secrets.varun-user-DerekCarr.file = "${self}/secrets/varun-user-DerekCarr.age";
  users.users.varun.passwordFile = "${config.age.secrets.varun-user-DerekCarr.path}";

  age.secrets.root-user-DerekCarr.file = "${self}/secrets/root-user-DerekCarr.age";
  users.users.root.passwordFile = "${config.age.secrets.root-user-DerekCarr.path}";

  environment.persistence."/persist" = {
    hideMounts = true;
    directories = [
      "/var/log"
      "/var/lib/bluetooth"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/etc/ssh"
      "/etc/NetworkManager/system-connections"
    ];
    files = [
      "/etc/machine-id"
    ];
  };

  home-manager.sharedModules = [
    {
      services.polybar.config = {
        "module/wlan".interface = lib.mkForce "wlp6s0";
        "bar/oofbar".modules-right = lib.mkForce "storage dot cpu dot mem dot audio dot bluetooth dot wlan dot date spacer tray launcher";
      };
    }
    {
      programs.waybar.settings.topbar.network.interface = "wlp6s0";
    }
  ];

  services.earlyoom.enable = true;

  services.hardware.openrgb.enable = true;

  system.stateVersion = "21.11";
}
