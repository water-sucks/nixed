{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    efibootmgr
    refind
  ];

  hardware.enableRedistributableFirmware = true;
  hardware.cpu.amd.updateMicrocode = true;

  boot = {
    loader.grub.gfxmodeEfi = "2560x1440";

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

    kernelModules = ["amdgpu" "kvm-amd" "wl"];
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

  services.xserver.videoDrivers = ["amdgpu"];

  systemd.services.systemd-udev-settle.enable = false;
  systemd.services.NetworkManager-wait-online.enable = false;
}
