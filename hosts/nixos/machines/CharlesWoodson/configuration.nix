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

    users.varun = let
      hmOptions = config.home-manager.users.varun;
    in {
      inherit (hmOptions.persistence) directories files;
    };
  };

  services.earlyoom.enable = true;

  services.hardware.openrgb.enable = true;

  services.ollama = {
    # The ollama systemd service does not deal with bind
    # mounts properly, and attempts to configure this directory.
    # imperatively upon startup by changing permissions and other.
    # things
    home = "/var/lib/private/ollama";
    acceleration = "rocm";
    rocmOverrideGfx = "10.1.0"; # AMD RX 5500 XT
  };

  system.stateVersion = "21.11";
}
