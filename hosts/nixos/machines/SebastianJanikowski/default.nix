{
  imports = [
    # Machine-specific modules
    ./configuration.nix
    ./home-manager.nix

    # General common modules
    ../../../profiles/nix.nix
    ../../../profiles/core.nix
    ../../../profiles/fonts.nix

    # NixOS-specific modules
    ../../profiles/boot.nix
    ../../profiles/systemd.nix
    ../../profiles/internet.nix
    ../../profiles/ssh.nix
    ../../profiles/pam.nix
    ../../profiles/sudo.nix
    ../../profiles/fontconfig.nix
    ../../profiles/console.nix
    ../../profiles/yubikey.nix
    ../../profiles/nixos-cli.nix
    ../../profiles/plymouth.nix
    ../../profiles/ly.nix
    ../../profiles/wm-helper.nix
    ../../profiles/leftwm.nix
    ../../profiles/river.nix
    ../../profiles/keyring.nix
    ../../profiles/sound.nix
    ../../profiles/bluetooth.nix
    ../../profiles/i18n.nix
    ../../profiles/printers.nix
    ../../profiles/tailscale.nix
    ../../profiles/optnix.nix
    ../../profiles/android.nix
    ../../profiles/kvm.nix
    ../../profiles/ios.nix

    # Users
    ../../../../users/varun
  ];
}
