{pkgs, ...}: {
  environment.systemPackages = with pkgs; [efibootmgr];

  boot = {
    loader = {
      efi.canTouchEfiVariables = true;

      grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
        zfsSupport = true;
        enableCryptodisk = true;
        splashImage = null;
      };
    };

    initrd = {
      systemd = {
        enable = true;
        settings.Manager = {
          # Prevent timeouts on boot
          DefaultDeviceTimeoutSec = "infinity";
        };
      };
    };
  };
}
