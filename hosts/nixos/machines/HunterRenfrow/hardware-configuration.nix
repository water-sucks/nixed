_: {
  hardware.enableAllFirmware = true;
  hardware.enableRedistributableFirmware = true;
  hardware.cpu.amd.updateMicrocode = true;

  boot = {
    initrd = {
      luks.devices.root = {
        device = "/dev/disk/by-uuid/648f819e-c365-402a-b766-20f7f340b8d7";
        preLVM = true;
        allowDiscards = true;
      };
      availableKernelModules = ["nvme" "xhci_pci" "usb_storage" "sd_mod" "sdhci_pci" "amdgpu"];
      kernelModules = ["dm-snapshot" "amdgpu"];
      systemd.enable = true;
      verbose = false;
    };

    supportedFilesystems = ["zfs"];

    kernelModules = ["kvm-amd" "mt7921e" "amdgpu" "uinput"];
    kernelParams = [
      "acpi_backlight=vendor"
      "mem_sleep_default=deep"
    ];
  };

  fileSystems."/" = {
    device = "locker/root/nixos";
    fsType = "zfs";
  };

  fileSystems."/home" = {
    device = "locker/home";
    fsType = "zfs";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/845A-9EA0";
    fsType = "vfat";
  };

  swapDevices = [
    {device = "/dev/disk/by-uuid/86cdd137-8957-4844-919b-23845735c7e6";}
  ];

  powerManagement = {
    enable = true;
    powertop.enable = true;
  };

  services.upower.enable = true;
  services.auto-cpufreq.enable = true;
  services.logind.lidSwitch = "suspend";

  environment.etc."sysconfig/lm_sensors".text = ''
    # This file is sourced by /etc/init.d/lm_sensors and defines the modules to
    # me loaded/unloaded.
    #
    # The format of this file is a shell script that simply defines variables:
    # HWMON_MODULES for hardware monitoring driver modules, and optionally
    # BUS_MODULES for any required bus driver module (for example for I2C or SPI).

    HWMON_MODULES="coretemp"
  '';
}
