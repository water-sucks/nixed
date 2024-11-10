{
  config,
  pkgs,
  ...
}: let
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

  networking.hostId = "7effc63b";

  xdg.portal.wlr.settings.screencast.output_name = "eDP-1";

  sops = {
    age.keyFile = "/persist/etc/ssh/sops_key";
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
      "/var/lib/alsa"
      "/var/lib/bluetooth"
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

  services.udev.extraRules = ''
    # Allow all users to write to backlight to change brightness
    ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="intel_backlight", MODE="0666", RUN+="${pkgs.coreutils}/bin/chmod a+w /sys/class/backlight/%k/brightness"
  '';

  services.earlyoom.enable = true;

  system.stateVersion = "22.05";
}
