{ config, lib, pkgs, modulesPath, ... }:

{
  environment.systemPackages = with pkgs; [
    efibootmgr
    refind
  ];

  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi";
      };
      grub = {
        enable = true;
        device = "nodev";
        version = 2;
        efiSupport = true;
        enableCryptodisk = true;
      };
    };
    initrd = {
      luks.devices."root" = {
        device = "/dev/disk/by-uuid/201c36cc-a740-4d8e-8956-b63784c9d475";
        preLVM = true;
        keyFile = "/keyfile.bin";
        allowDiscards = true;
      };
      secrets = {
        "keyfile.bin" = "/etc/secrets/initrd/keyfile.bin";
      };
      availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
      kernelModules = [ "dm-snapshot" "amdgpu" ];
    };
    kernelModules = [ "amdgpu" "kvm-amd" "wl" ];
    kernelParams = [ "quiet" "loglevel=1" "udev.log_level=3" ];
  };

  fileSystems."/" =
    {
      device = "/dev/disk/by-uuid/f034ca9e-be8d-4631-b9b5-ad9d04cafc9b";
      fsType = "ext4";
    };

  fileSystems."/boot/efi" =
    {
      device = "/dev/disk/by-uuid/8ECC-2ED9";
      fsType = "vfat";
    };

  swapDevices =
    [{ device = "/dev/disk/by-uuid/c859b4eb-d5c6-47bc-bec1-9c8a85bcff5c"; }];

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  systemd.services.systemd-udev-settle.enable = false;
  systemd.services.NetworkManager-wait-online.enable = false;
}
