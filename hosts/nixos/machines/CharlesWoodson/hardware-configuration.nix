{
  config,
  pkgs,
  ...
}: {
  boot = {
    loader.grub = {
      default = "saved";
      gfxmodeEfi = "2560x1440";
    };

    zfs = {
      devNodes = "/dev/disk/by-uuid";
      requestEncryptionCredentials = true;
    };

    initrd = {
      availableKernelModules = ["nvme" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod"];
      kernelModules = [];
      verbose = false;

      systemd.services.impermanence-root = {
        wantedBy = ["initrd.target"];
        after = ["zfs-import.target"];
        before = ["sysroot.mount"];
        path = [config.boot.zfs.package];
        unitConfig.DefaultDependencies = "no";
        serviceConfig.type = "oneshot";
        script = ''
          zfs rollback -r locker/root@blank
        '';
      };
    };

    supportedFilesystems = ["zfs"];

    kernelModules = ["wl" "v412loopback"];

    extraModulePackages = [
      config.boot.kernelPackages.v4l2loopback.out
    ];
  };

  hardware = {
    enableRedistributableFirmware = true;
    cpu.amd.updateMicrocode = true;
    nvidia = {
      open = true; # Use the open-source modules
      package = config.boot.kernelPackages.nvidiaPackages.beta;
      modesetting.enable = true;
    };
  };

  services.xserver.videoDrivers = ["nvidia"];

  fileSystems = {
    "/" = {
      device = "locker/root";
      fsType = "zfs";
      neededForBoot = true;
    };

    "/boot" = {
      device = "/dev/disk/by-partlabel/ESP";
      fsType = "vfat";
    };

    "/nix" = {
      device = "locker/nix";
      fsType = "zfs";
      neededForBoot = true;
    };

    "/persist" = {
      device = "locker/persist";
      fsType = "zfs";
      neededForBoot = true;
    };
  };

  swapDevices = [
    {device = "/dev/disk/by-uuid/2668a398-1360-4f36-9898-1969ceaa327b";}
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

  systemd.services.systemd-udev-settle.enable = false;

  systemd.services.NetworkManager-wait-online.enable = false;

  services.pipewire = {
    extraConfig.pipewire = {
      "10-clock-rate" = {
        "context.properties" = {
          # Reduces stuttering of Focusrite Scarlett Solo Gen 4 audio under load.
          "default.clock.rate" = 48000;
          "default.clock.quantum" = 256;
          "default.clock.min-quantum" = 128;
          "default.clock.max-quantum" = 512;
        };
      };
    };
  };

  services.ollama = {
    package = pkgs.ollama-cuda;
  };

  boot.binfmt.emulatedSystems = ["aarch64-linux"];
}
