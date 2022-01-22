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
      };
    };
    initrd = {
      luks.devices."nixos".device = "/dev/disk/by-uuid/cc3ec9fa-ac2b-449c-a314-c734ef29fcd1";
      availableKernelModules = [ "mt7921e" "nvme" "xhci_pci" "usb_storage" "sd_mod" "sdhci_pci" ];
      kernelModules = [ "mt7921e" "amdgpu" ];
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
    kernelParams = [ "quiet" "udev.log_level=3" ];
    extraModulePackages = [ ];
    # consoleLogLevel = 0;
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

  swapDevices = [ ];

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
