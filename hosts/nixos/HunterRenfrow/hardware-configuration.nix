{
  config,
  lib,
  pkgs,
  ...
}: {
  hardware.enableAllFirmware = true;
  hardware.enableRedistributableFirmware = true;

  boot = {
    loader = {
      timeout = lib.mkDefault 0;
      efi.canTouchEfiVariables = true;
      grub.enable = false;
      systemd-boot = {
        enable = true;
        editor = false;
        configurationLimit = 100;
      };
    };

    initrd = {
      luks.devices."nixos".device = "/dev/disk/by-uuid/cc3ec9fa-ac2b-449c-a314-c734ef29fcd1";
      luks.devices."swap" = {
        device = "/dev/disk/by-uuid/63005784-e8b6-4d72-91d3-a9ac5281be6a";
        keyFile = "/keyfile-swap.bin";
        allowDiscards = true;
      };
      secrets = {
        "keyfile-swap.bin" = "/etc/secrets/initrd/keyfile-swap.bin";
      };
      availableKernelModules = ["nvme" "xhci_pci" "usb_storage" "sd_mod" "sdhci_pci" "amdgpu"];
      kernelModules = ["amdgpu"];
      systemd.enable = true;
      verbose = false;
    };

    kernelModules = ["kvm-amd" "mt7921e" "amdgpu" "uinput"];
    kernelParams = [
      "quiet"
      "splash"
      "rd.systemd_show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
      "acpi_backlight=vendor"
      "mem_sleep_default=deep"
      "boot.shell_on_fail"
    ];

    consoleLogLevel = 0;
    plymouth = {
      enable = true;
      font = "${pkgs.ibm-plex}/share/fonts/opentype/IBMPlexSans-Text.otf";
      theme = "spinning-watch";
      themePackages = with pkgs; [
        plymouth-spinning-watch-theme
      ];
    };
  };

  fileSystems."/" = {
    device = " /dev/disk/by-uuid/ba74bdff-8fb8-4217-8ae0-d45bb2386acb ";
    fsType = "btrfs";
    options = ["subvol=nixos"];
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/5F4A-2418";
    fsType = "vfat";
  };

  swapDevices = [
    {device = "/dev/disk/by-uuid/87c43d12-3fdd-492e-9db2-6312c5b48e3e";}
  ];

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

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
