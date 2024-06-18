{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
  ];

  time.timeZone = "America/Los_Angeles";

  networking.hostId = "7effc63b";

  xdg.portal.wlr.settings.screencast.output_name = "eDP-1";

  # Workaround to use agenix with impermanence. I'll probably end up using sops-nix at some point
  # anyway so this workaround is fine, no need to be perfect.
  age.identityPaths = ["/persist/etc/ssh/ssh_host_rsa_key" "/persist/etc/ssh/ssh_host_ed25519_key"];

  age.secrets.varun-user-HunterRenfrow.file = ../../../../secrets/varun-user-HunterRenfrow.age;
  users.users.varun.hashedPasswordFile = "${config.age.secrets.varun-user-HunterRenfrow.path}";

  age.secrets.root-user-HunterRenfrow.file = ../../../../secrets/root-user-HunterRenfrow.age;
  users.users.root.hashedPasswordFile = "${config.age.secrets.root-user-HunterRenfrow.path}";

  environment.persistence."/persist" = {
    hideMounts = true;
    directories = [
      "/var/log"
      "/var/lib/alsa"
      "/var/lib/bluetooth"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/var/lib/libvirt"
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
