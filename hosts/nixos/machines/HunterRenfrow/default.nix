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
    fonts.enable = true;
    fontconfig.enable = true;
    kmscon.enable = true;
    secrets.enable = true;

    plymouth.enable = true;
    dot.enable = true;
    wm-helper.enable = true;
    lightdm.enable = true;
    sound.enable = true;
    bluetooth.enable = true;
    i18n.enable = true;

    android.enable = true;
    kvm.enable = true;
  };

  users = {
    varun.enable = true;
  };
}