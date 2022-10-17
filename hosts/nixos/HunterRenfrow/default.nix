{
  imports = [
    ./configuration.nix
  ];

  profiles = {
    nix = true;
    core = true;
    boot = true;
    caches = true;
    ssh = true;
    pam = true;
    fonts = true;
    fontconfig = true;
    kmscon = true;
    secrets = true;

    plymouth = true;
    dot = true;
    wm-helper = true;
    lightdm = true;
    sound = true;
    bluetooth = true;
    i18n = true;

    android = true;
    kvm = true;
  };

  users = {
    varun = true;
  };
}
