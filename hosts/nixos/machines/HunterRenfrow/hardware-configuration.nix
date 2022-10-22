{
  config,
  lib,
  pkgs,
  ...
}: {
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
    cpuFreqGovernor = "powersave";
    resumeCommands = ''
      # Stops picom flickering after suspend
      systemctl --user restart picom.service
    '';
    powertop.enable = true;
  };

  services.tlp = {
    enable = true;
    settings = {
      START_CHARGE_THRESH_BAT0 = 75;
      STOP_CHARGE_THRESH_BAT0 = 95;

      CPU_SCALING_MIN_FREQ_ON_AC = 800000;
      CPU_SCALING_MAX_FREQ_ON_AC = 3500000;
      CPU_SCALING_MIN_FREQ_ON_BAT = 800000;
      CPU_SCALING_MAX_FREQ_ON_BAT = 2300000;

      # Enable audio power saving for Intel HDA, AC97 devices (timeout in secs).;
      # A value of 0 disables, >=1 enables power saving (recommended: 1).;
      # Default: 0 (AC), 1 (BAT);
      SOUND_POWER_SAVE_ON_AC = 0;
      SOUND_POWER_SAVE_ON_BAT = 1;

      # Runtime Power Management for PCI(e) bus devices: on=disable, auto=enable.;
      # Default: on (AC), auto (BAT);
      RUNTIME_PM_ON_AC = "on";
      RUNTIME_PM_ON_BAT = "auto";

      # Battery feature drivers: 0=disable, 1=enable;
      # Default: 1 (all);
      NATACPI_ENABLE = 1;
      TPACPI_ENABLE = 1;
      TPSMAPI_ENABLE = 1;
    };
  };
  services.upower.enable = true;
  services.thermald.enable = true;
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
