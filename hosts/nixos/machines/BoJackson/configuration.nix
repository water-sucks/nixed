{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
  ];

  networking = {
    hostId = "6d421a34";
    useDHCP = false;
    useNetworkd = true;
    usePredictableInterfaceNames = false;
  };

  systemd.network = {
    enable = true;
    links = {
      "10-eth0" = {
        matchConfig.MACAddress = "24:4b:fe:59:44:99";
        linkConfig.Name = "eth0";
      };
    };

    networks = {
      "10-wired" = {
        matchConfig.Name = "eth0";
        DHCP = "no";
        address = [
          "192.168.1.69/24"
        ];
        routes = [
          {Gateway = "192.168.1.254";}
        ];
      };
    };
  };

  i18n.defaultLocale = "en_US.UTF-8";

  sops = {
    age.keyFile = "/persist/var/secrets/sops_key";
    secrets = {
      ssh-host-key = {
        sopsFile = ./secrets/ssh_keys.yml;
        format = "yaml";
        key = "host_key";
        neededForUsers = true;
      };
      tailscale-key = {
        sopsFile = ./secrets/tailscale.yml;
        format = "yaml";
        key = "auth_key";
      };
    };
  };

  environment.persistence."/persist" = {
    hideMounts = true;
    directories = [
      "/var/log"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/var/secrets"
      "/etc/ssh"
    ];
    files = [
      "/etc/machine-id"
    ];
  };

  users.users.admin = {
    description = "BoJackson admin";
    shell = pkgs.bash;
    isNormalUser = true;
    extraGroups = ["wheel"];
    openssh.authorizedKeys.keys = [
      # GPG agent SSH key
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDI19L//A/gqi0gWWqJufNEc8euufccLd3abrMoLnv+ZhmYQEkPkyTwz322n8PSLmPQ8Ev2aAZ0+MgSt7Xfu7lp/Puw8SoQpHx54EFi4825Xr5D/L6YduwoHgwi7Rrk129eAavX3hLLS9R1vvM0fklD4s8ESAsdZP9QycI2SIIq/dg4gAu7UjHSwMtOSAa+LEFqfNdvp0KOmJqCZacxBuRRVyd4yZPhxzJQI4a0tKh8aPb2FKJBn/p5c5E2jyUPDs/KAdMj8GUofSOXD8/3+RXtdGjMZDzWIBHljhlDKe6NlCcVuQ9Yzc10T8z6+Bv3AGR9cd005cdlv7BLgBxppCZYhuWtNvmGR6L7qhUmUSn/28VWXS8AXEqH/Kew3UCY+Q9m7sD2S/ZD+HX99cuc2eLjjbLZgL/YY+t+3+arflU6gFuFcH3008rEo/tOTo5CsZpTR/E1jD4OeqCR+MElD9gYwJZ4yAORPiHq6+w5WtWhFVEp/YXc9r4obW9cmfVpgaTT5wC/0/MUU4i6KgcKXMgR9M0vYhDqCMMKXjDTfRZ63muLHWg3S/sw7i+HTp5GsM9cyvQ+eM2tyOyv6P/+gqdw5Fbhza+408W3juqWdnGFZfeAr50do+tXNz6XSRTrDRHtN4ACj2LX3Ja37nqenaTspFyeFa2o3JfzeRIfVaxbQw== cardno:FF7F00 gpg-yubikey"
      # Yubikey 5 FIDO2 SSH key
      "sk-ecdsa-sha2-nistp256@openssh.com AAAAInNrLWVjZHNhLXNoYTItbmlzdHAyNTZAb3BlbnNzaC5jb20AAAAIbmlzdHAyNTYAAABBBD07JbCo3daOE89ov9PV8dLImymQCR5vlXYgFmYK69qwalnXFVj3GUZzPiPeZZ1+CvOXGXW487G2KqpAmhC9akQAAAALdGVybWl1cy5jb20="
    ];
  };

  security.sudo.wheelNeedsPassword = false;

  services.openssh = {
    hostKeys = [
      {
        inherit (config.sops.secrets.ssh-host-key) path;
        type = "ed25519";
      }
    ];
  };

  services.tailscale = {
    authKeyFile = config.sops.secrets.tailscale-key.path;
  };

  services.earlyoom.enable = true;

  system.stateVersion = "26.05";
}
