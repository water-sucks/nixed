{
  config,
  lib,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
  ];

  time.timeZone = "America/Los_Angeles";

  networking.hostId = "8e004b0f";

  i18n.defaultLocale = "en_US.UTF-8";

  xdg.portal.wlr.settings.screencast.output_name = "HDMI-A-1";

  # Workaround to use agenix with impermanence. I'll probably end up using sops-nix at some point
  # anyway so this workaround is fine, no need to be perfect.
  age = {
    identityPaths = ["/persist/etc/ssh/ssh_host_rsa_key" "/persist/etc/ssh/ssh_host_ed25519_key"];
    secrets.varun-user-CharlesWoodson.file = ../../../../secrets/varun-user-CharlesWoodson.age;
    secrets.root-user-CharlesWoodson.file = ../../../../secrets/root-user-CharlesWoodson.age;
  };
  users.users.varun.hashedPasswordFile = "${config.age.secrets.varun-user-CharlesWoodson.path}";
  users.users.root.hashedPasswordFile = "${config.age.secrets.root-user-CharlesWoodson.path}";

  environment.persistence."/persist" = {
    hideMounts = true;
    directories = [
      "/var/log"
      "/var/lib/bluetooth"
      "/var/lib/alsa"
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

  services.hardware.openrgb.enable = true;

  system.stateVersion = "21.11";
}
