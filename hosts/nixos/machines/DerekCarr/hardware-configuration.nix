{config, ...}: {
  hardware.enableRedistributableFirmware = true;
  hardware.cpu.amd.updateMicrocode = true;

  boot = {
    loader.grub = {
      default = "saved";
      gfxmodeEfi = "2560x1440";
      extraEntriesBeforeNixOS = true;
      extraEntries = ''
        menuentry "Windows 10" --class windows --class os {
          search --no-floppy --set=root --fs-uuid 860D-8749
          chainloader /efi/Microsoft/Boot/bootmgfw.efi
          boot
        }

        menuentry "macOS Ventura" --class macos --class os {
          search --no-floppy --set=root --fs-uuid 860D-8749
          chainloader /efi/oc/bootx64.efi
          boot
        }
      '';
    };

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

    kernelModules = ["amdgpu" "kvm-amd" "wl" "v412loopback"];
    kernelPackages = config.boot.zfs.package.latestCompatibleLinuxPackages;

    extraModulePackages = [
      config.boot.kernelPackages.v4l2loopback.out
    ];
  };

  fileSystems."/" = {
    device = "locker/root/nixos";
    fsType = "zfs";
  };

  fileSystems."/persist" = {
    device = "locker/persist";
    fsType = "zfs";
    neededForBoot = true;
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/8ECC-2ED9";
    fsType = "vfat";
  };

  fileSystems."/home/varun" = {
    device = "none";
    fsType = "tmpfs";
    options = ["size=4G" "mode=777"];
  };

  swapDevices = [{device = "/dev/disk/by-uuid/02e3a0c7-b170-48e4-a66d-5f0390ae09dc";}];

  services.xserver.videoDrivers = ["amdgpu"];

  systemd.services.systemd-udev-settle.enable = false;
  systemd.services.NetworkManager-wait-online.enable = false;
}
