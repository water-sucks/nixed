{
  imports = [
    ./configuration.nix
  ];

  profiles = {
    nix.enable = true;
    core.enable = true;
    boot.enable = true;
    caches.enable = true;
    ssh.enable = true;
    pam.enable = true;
    sudo.enable = true;
    fonts.enable = true;
    fontconfig.enable = true;
    kmscon.enable = false;
    nitrokey.enable = true;

    plymouth.enable = true;
    wm-helper.enable = true;
    lightdm.enable = true;
    sound.enable = true;
    bluetooth.enable = true;
    i18n.enable = true;

    android.enable = true;
    kvm.enable = true;
    ios.enable = true;
  };

  users = {
    varun.enable = true;
  };
}
