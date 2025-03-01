{
  imports = [
    ./configuration.nix
    ./home-manager.nix
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
    console.enable = true;
    yubikey.enable = true;
    nixos-cli.enable = true;

    plymouth.enable = true;
    ly.enable = true;
    wm-helper.enable = true;
    leftwm.enable = true;
    river.enable = true;

    sound.enable = true;
    bluetooth.enable = true;
    i18n.enable = true;
    printers.enable = true;

    android.enable = true;
    kvm.enable = true;
    ios.enable = true;
    docker.enable = true;
    ollama.enable = false; # Wait until I get a better graphics card.
    wireshark.enable = true;

    steam.enable = true;
  };

  users = {
    varun.enable = true;
  };
}
