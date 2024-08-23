{
  imports = [
    ./configuration.nix
  ];

  profiles = {
    nix.enable = true;
    core.enable = true;
    boot.enable = true;
    systemd.enable = true;
    internet.enable = true;
    ssh.enable = true;
    pam.enable = true;
    sudo.enable = true;
    fonts.enable = true;
    fontconfig.enable = true;
    kmscon.enable = false;
    nitrokey.enable = true;
    nixos-cli.enable = true;

    plymouth.enable = true;
    wm-helper.enable = true;
    lightdm.enable = true;
    sound.enable = true;
    bluetooth.enable = true;
    i18n.enable = true;
    printers.enable = true;

    android.enable = true;
    kvm.enable = true;
    ios.enable = true;
    vmware.enable = true;
  };

  users = {
    varun.enable = true;
  };
}
