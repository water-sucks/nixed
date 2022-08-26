{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    efibootmgr
    refind
  ];

  boot = {
    loader = {
      efi.canTouchEfiVariables = true;

      grub = {
        enable = true;
        device = "nodev";
        version = 2;
        efiSupport = true;
        enableCryptodisk = true;
      };
    };

    initrd = {
      luks.devices.root = {
        device = "/dev/disk/by-uuid/f2bf3c59-b764-43d7-b48f-8163f7219387";
        preLVM = true;
        allowDiscards = true;
      };
      availableKernelModules = ["nvme" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod"];
      kernelModules = ["dm-snapshot" "amdgpu"];
      systemd.enable = true;
      verbose = false;
    };

    supportedFilesystems = ["zfs"];

    kernelModules = ["amdgpu" "kvm-amd" "wl"];
    kernelParams = [
      "quiet"
      "splash"
      "loglevel=1"
      "rd.systemd_show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
      "boot.shell_on_fail"
    ];

    consoleLogLevel = 0;
    plymouth = {
      enable = true;
      theme = "spinning-watch";
      font = "${pkgs.ibm-plex}/share/fonts/opentype/IBMPlexSans-Text.otf";
      themePackages = with pkgs; [
        plymouth-spinning-watch-theme
      ];
    };
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
    device = "/dev/disk/by-uuid/8ECC-2ED9";
    fsType = "vfat";
  };

  swapDevices = [{device = "/dev/disk/by-uuid/02e3a0c7-b170-48e4-a66d-5f0390ae09dc";}];

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  services.xserver.videoDrivers = ["amdgpu"];

  systemd.services.systemd-udev-settle.enable = false;
  systemd.services.NetworkManager-wait-online.enable = false;
}
