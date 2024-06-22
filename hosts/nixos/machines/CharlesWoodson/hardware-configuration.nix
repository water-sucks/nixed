{config, ...}: {
  hardware.enableRedistributableFirmware = true;
  hardware.cpu.amd.updateMicrocode = true;

  boot = {
    loader.grub = {
      default = "saved";
      gfxmodeEfi = "2560x1440";
    };

    initrd = {
      luks.devices.root = {
        device = "/dev/disk/by-uuid/f2bf3c59-b764-43d7-b48f-8163f7219387";
        preLVM = true;
        allowDiscards = true;
      };

      availableKernelModules = ["amdgpu" "dm-snapshot" "nvme" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod"];
      kernelModules = ["dm-snapshot" "amdgpu"];
      systemd.enable = true;
      verbose = false;
    };

    supportedFilesystems = ["zfs"];

    kernelModules = ["amdgpu" "kvm-amd" "wl" "v412loopback"];
    kernelPackages = config.boot.zfs.package.latestCompatibleLinuxPackages;

    extraModulePackages = [
      config.boot.kernelPackages.v4l2loopback.out
    ];
  };

  fileSystems = {
    "/" = {
      device = "none";
      fsType = "tmpfs";
      options = ["size=3G" "mode=755"];
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

    "/home/varun" = {
      device = "none";
      fsType = "tmpfs";
      options = ["size=4G" "mode=777"];
    };

    # Disabled sync in this dataset so atuin can run faster.
    # Synchronous writes go brr: https://github.com/atuinsh/atuin/issues/952
    "/persist/home/varun/.local/share/atuin" = {
      device = "locker/persist/varun-atuin";
      fsType = "zfs";
      neededForBoot = true;
    };

    "/etc/ssh" = {
      depends = ["/persist"];
      neededForBoot = true;
    };
  };

  swapDevices = [{device = "/dev/disk/by-partlabel/swap";}];

  systemd.services.systemd-udev-settle.enable = false;
  systemd.services.NetworkManager-wait-online.enable = false;
}
