{config, ...}: let
  pwSecretLocation = username: {
    sopsFile = ./secrets/passwords.yml;
    format = "yaml";
    key = username;
    neededForUsers = true;
  };
in {
  imports = [
    ./hardware-configuration.nix
  ];

  time.timeZone = "America/Los_Angeles";

  networking.hostId = "8e004b0f";

  i18n.defaultLocale = "en_US.UTF-8";

  xdg.portal.wlr.settings.screencast.output_name = "HDMI-A-1";

  sops = {
    age.keyFile = "/persist/var/secrets/sops_key";
    secrets = {
      varun-user-pw = pwSecretLocation "varun";
      root-user-pw = pwSecretLocation "root";
    };
  };

  users.users.varun.hashedPasswordFile = "${config.sops.secrets.varun-user-pw.path}";
  users.users.root.hashedPasswordFile = "${config.sops.secrets.root-user-pw.path}";

  environment.persistence."/persist" = {
    hideMounts = true;
    directories = [
      "/var/log"
      "/var/lib/bluetooth"
      "/var/lib/alsa"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/var/lib/libvirt"
      "/var/secrets"
      "/etc/ssh"
      "/etc/NetworkManager/system-connections"
    ];
    files = [
      "/etc/machine-id"
    ];
  };

  services.earlyoom.enable = true;

  services.hardware.openrgb.enable = true;

  system.stateVersion = "21.11";
}
