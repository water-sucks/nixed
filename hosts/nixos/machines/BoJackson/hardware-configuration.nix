{config, ...}: {
  hardware.cpu.amd.updateMicrocode = true;

  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot.enable = true;
    };

    zfs = {
      devNodes = "/dev/disk/by-uuid";
      requestEncryptionCredentials = true;
    };

    initrd = {
      systemd = {
        enable = true;

        settings.Manager = {
          DefaultDeviceTimeoutSec = "infinity";
        };

        # Enable the systemd network management facilities
        # in the initrd.
        network = {
          enable = true;
          wait-online = {
            enable = true;
            anyInterface = true;
          };

          inherit (config.systemd.network) networks links;
        };

        services.impermanence-root = {
          wantedBy = ["initrd.target"];
          after = ["zfs-import.target"];
          before = ["sysroot.mount"];
          path = [config.boot.zfs.package];
          unitConfig.DefaultDependencies = "no";
          serviceConfig.type = "oneshot";
          script = ''
            zfs rollback -r rpool/root@blank
          '';
        };
      };

      network = {
        enable = true;
        # TODO: configure tailscale || newt for remote initrd access
        ssh = {
          enable = true;
          hostKeys = [
            "/persist/var/secrets/initrd/ssh_host_key"
          ];
          authorizedKeys = [
            # GPG agent SSH key
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDI19L//A/gqi0gWWqJufNEc8euufccLd3abrMoLnv+ZhmYQEkPkyTwz322n8PSLmPQ8Ev2aAZ0+MgSt7Xfu7lp/Puw8SoQpHx54EFi4825Xr5D/L6YduwoHgwi7Rrk129eAavX3hLLS9R1vvM0fklD4s8ESAsdZP9QycI2SIIq/dg4gAu7UjHSwMtOSAa+LEFqfNdvp0KOmJqCZacxBuRRVyd4yZPhxzJQI4a0tKh8aPb2FKJBn/p5c5E2jyUPDs/KAdMj8GUofSOXD8/3+RXtdGjMZDzWIBHljhlDKe6NlCcVuQ9Yzc10T8z6+Bv3AGR9cd005cdlv7BLgBxppCZYhuWtNvmGR6L7qhUmUSn/28VWXS8AXEqH/Kew3UCY+Q9m7sD2S/ZD+HX99cuc2eLjjbLZgL/YY+t+3+arflU6gFuFcH3008rEo/tOTo5CsZpTR/E1jD4OeqCR+MElD9gYwJZ4yAORPiHq6+w5WtWhFVEp/YXc9r4obW9cmfVpgaTT5wC/0/MUU4i6KgcKXMgR9M0vYhDqCMMKXjDTfRZ63muLHWg3S/sw7i+HTp5GsM9cyvQ+eM2tyOyv6P/+gqdw5Fbhza+408W3juqWdnGFZfeAr50do+tXNz6XSRTrDRHtN4ACj2LX3Ja37nqenaTspFyeFa2o3JfzeRIfVaxbQw== cardno:FF7F00 gpg-yubikey"
            # Yubikey 5 FIDO2 SSH key
            "sk-ecdsa-sha2-nistp256@openssh.com AAAAInNrLWVjZHNhLXNoYTItbmlzdHAyNTZAb3BlbnNzaC5jb20AAAAIbmlzdHAyNTYAAABBBD07JbCo3daOE89ov9PV8dLImymQCR5vlXYgFmYK69qwalnXFVj3GUZzPiPeZZ1+CvOXGXW487G2KqpAmhC9akQAAAALdGVybWl1cy5jb20="
          ];
        };
      };

      availableKernelModules = ["nvme" "iwlwifi" "r8169" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod"];
    };

    kernelModules = ["kvm-amd"];
  };

  fileSystems."/" = {
    device = "rpool/root";
    fsType = "zfs";
    neededForBoot = true;
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/84EF-3E10";
    fsType = "vfat";
  };

  fileSystems."/nix" = {
    device = "rpool/nix";
    fsType = "zfs";
    neededForBoot = true;
  };

  fileSystems."/persist" = {
    device = "rpool/persist";
    fsType = "zfs";
    neededForBoot = true;
  };

  swapDevices = [
    {device = "/dev/zvol/rpool/swap";}
  ];

  services.zfs = {
    autoScrub = {
      enable = true;
      interval = "monthly";
    };

    trim = {
      enable = true;
      interval = "weekly";
    };
  };
}
