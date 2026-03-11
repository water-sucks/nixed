_: {
  imports = [
    # Machine-specific
    ./configuration.nix

    # General common modules
    ../../../profiles/nix.nix
    ../../../profiles/core.nix

    # NixOS-specific modules
    ../../profiles/ssh.nix
    ../../profiles/sudo.nix
    ../../profiles/systemd.nix
    ../../profiles/nixos-cli.nix
    ../../profiles/tailscale.nix
    ../../profiles/sanjay-soup.nix
  ];
}
