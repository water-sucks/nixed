{
  hardware.enableAllFirmware = true;
  hardware.enableRedistributableFirmware = true;
  hardware.cpu.intel.updateMicrocode = true;

  boot.binfmt.emulatedSystems = ["aarch64-linux"];

  boot = {
    loader.grub = {
      gfxmodeEfi = "1920x1080";
    };

    initrd = {
      luks.devices.root = {
        device = "/dev/disk/by-partlabel/NixOS";
        preLVM = true;
        allowDiscards = true;
      };
      availableKernelModules = ["nvme" "xhci_pci" "thunderbolt" "i915"];
      kernelModules = ["dm-snapshot"];
      verbose = false;
    };

    supportedFilesystems = ["zfs"];

    kernelModules = ["kvm-intel" "mt7921e" "uinput"];
    kernelParams = [
      "mem_sleep_default=deep"
      "nvme.noacpi=1"
      "i915.fastboot=1"
      "i915.force_probe=46a6"
    ];
  };

  fileSystems = {
    "/" = {
      device = "none";
      fsType = "tmpfs";
      options = ["size=6G" "mode=755"];
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

  swapDevices = [{device = "/dev/disk/by-partlabel/swap";}];

  systemd.services.systemd-udev-settle.enable = false;
  systemd.services.NetworkManager-wait-online.enable = false;

  powerManagement.enable = true;

  services.tlp = {
    enable = true;
    settings = {
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

      START_CHARGE_THRESH_BAT0 = 20;
      STOP_CHARGE_THRESH_BAT0 = 20;

      CPU_MAX_PERF_ON_AC = 100;
      CPU_MAX_PERF_ON_BAT = 50;
    };
  };

  services.upower.enable = true;
  services.auto-cpufreq.enable = true;
  services.logind = {
    settings = {
      Login = {
        HandlePowerKey = "suspend";
        LidSwitch = "suspend";
      };
    };
  };
}
