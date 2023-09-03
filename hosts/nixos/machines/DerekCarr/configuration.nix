{
  config,
  lib,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
  ];

  time.timeZone = "America/Los_Angeles";

  networking = {
    nameservers = [
      "9.9.9.9"
      "9.9.9.10"
      "9.9.9.11"
      "2620:fe::9"
      "2620:fe::10"
      "2620:fe::11"
    ];
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

  age.secrets.varun-user-DerekCarr.file = ../../../../secrets/varun-user-DerekCarr.age;
  users.users.varun.passwordFile = "${config.age.secrets.varun-user-DerekCarr.path}";

  age.secrets.root-user-DerekCarr.file = ../../../../secrets/root-user-DerekCarr.age;
  users.users.root.passwordFile = "${config.age.secrets.root-user-DerekCarr.path}";

  environment.persistence."/persist" = {
    hideMounts = true;
    directories = [
      "/var/log"
      "/var/lib/bluetooth"
      "/var/lib/alsa"
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
      };
    }
    {
      programs.waybar.settings.topbar.network.interface = "wlp6s0";
    }
  ];

  services.earlyoom.enable = true;

  system.stateVersion = "21.11";
}
