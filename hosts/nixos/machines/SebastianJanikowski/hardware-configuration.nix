{config, ...}: {
  hardware.enableAllFirmware = true;
  hardware.enableRedistributableFirmware = true;
  hardware.cpu.intel.updateMicrocode = true;

  boot = {
    initrd = {
      luks.devices.root = {
        device = "/dev/disk/by-partlabel/NixOS";
        preLVM = true;
        allowDiscards = true;
      };
      availableKernelModules = ["nvme" "xhci_pci" "thunderbolt"];
      kernelModules = ["dm-snapshot"];
      systemd.enable = true;
      verbose = false;
    };

    supportedFilesystems = ["zfs"];

    kernelModules = ["kvm-intel" "mt7921e" "uinput"];
    kernelPackages = config.boot.zfs.package.latestCompatibleLinuxPackages;
    kernelParams = [
      "mem_sleep_default=deep"
      "nvme.noacpi=1"
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

  powerManagement = {
    enable = true;
    powertop.enable = true;
  };

  services.upower.enable = true;
  services.auto-cpufreq.enable = true;
  services.logind = {
    lidSwitch = "suspend";
    powerKey = "suspend";
  };
}
