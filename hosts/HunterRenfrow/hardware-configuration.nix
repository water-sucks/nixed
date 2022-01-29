{ config, lib, pkgs, modulesPath, ... }:

{
  hardware.enableAllFirmware = true;
  hardware.enableRedistributableFirmware = true;

  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        device = "nodev";
        version = 2;
        efiSupport = true;
        gfxmodeEfi = "1920x1080";
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
      availableKernelModules = [ "nvme" "xhci_pci" "usb_storage" "sd_mod" "sdhci_pci" "amdgpu" ];
      kernelModules = [ "amdgpu" ];
    };
    kernelPackages = pkgs.linuxPackages_latest;
    kernelPatches = [
      {
        name = "wireless-mt7921e-fix";
        patch = builtins.fetchurl {
          url = "https://patchwork.kernel.org/project/linux-wireless/patch/70e27cbc652cbdb78277b9c691a3a5ba02653afb.1641540175.git.objelf@gmail.com/raw";
          sha256 = "0q4z1wdzsyr5di0q0zngv2xyx2102s14b1bpr8wckdh7zgjypk3d";
        };
      }
    ];
    kernelModules = [ "kvm-amd" "mt7921e" "amdgpu" ];
    kernelParams = [ "quiet" "udev.log_level=0" "acpi_backlight=vendor" ];
    extraModulePackages = [ ];
    consoleLogLevel = 0;
  };

  fileSystems."/" =
    {
      device = " /dev/disk/by-uuid/ba74bdff-8fb8-4217-8ae0-d45bb2386acb ";
      fsType = "btrfs";
      options = [ "subvol=nixos" ];
    };

  fileSystems."/boot" =
    {
      device = "/dev/disk/by-uuid/5F4A-2418";
      fsType = "vfat";
    };

  swapDevices = [
    { device = "/dev/disk/by-uuid/87c43d12-3fdd-492e-9db2-6312c5b48e3e"; }
  ];

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
