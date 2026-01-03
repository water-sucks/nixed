{config, ...}: {
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
        after = ["zfs-import-locker.service"];
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

  # TODO: enable zfs scrub, trim service periodically (weekly)

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

    "/etc/ssh" = {
      depends = ["/persist"];
      neededForBoot = true;
    };
  };

  swapDevices = [
    {device = "/dev/disk/by-uuid/2668a398-1360-4f36-9898-1969ceaa327b";}
  ];

  systemd.services.systemd-udev-settle.enable = false;

  systemd.services.NetworkManager-wait-online.enable = false;

  boot.binfmt.emulatedSystems = ["aarch64-linux"];
}
