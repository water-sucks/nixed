{pkgs, ...}: {
  users.users.varun.home = "/Users/varun";
  users.users.varun.uid = 501;
  users.users.varun.isHidden = false;

  security.pam.services.sudo_local.touchIdAuth = true;

  nix.enable = false;

  determinateNix = {
    enable = true;
    customSettings = {
      allowed-users = ["*"];
      trusted-users = ["root" "@admin"];
      max-jobs = "auto";
      cores = 0;
      auto-optimise-store = false;
      extra-trusted-substituters = [
        "https://artifact-s3-gateway.int.n7k.io/n7k-nix-cache"
        "https://nix-community.cachix.org"
      ];
      extra-trusted-public-keys = [
        "nix-cache.infra.n7k.io-0:WyML6bRQeGqxs/1iSoQrlMuooDlxG15rgjuo7Elmpf4="
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      ];
    };
    # Determinate's own Native Linux Builder is forced off by this module
    # (determinateNixd.builder.state = "disabled"); it needs a FlakeHub login.
    nixosVmBasedLinuxBuilder = {
      enable = true;
      # Virtualization.framework instead of QEMU, with Rosetta for x86_64-linux.
      package = pkgs.darwin.linux-builder-vz;
      # Defaults to the guest's own system only; without x86_64-linux here,
      # the host never offloads x86_64 builds to it.
      systems = ["aarch64-linux" "x86_64-linux"];
      config.virtualisation = {
        cores = 8;
        # Real /dev/kvm in the guest, backing the advertised `kvm` feature
        # (NixOS tests). Needs macOS 15+ and M3 or newer.
        vz.nestedVirtualization = true;
        darwin-builder = {
          memorySize = 32 * 1024; # MiB
          diskSize = 100 * 1024; # MiB; only applied when the disk image is (re)created
          min-free = 10 * 1024 * 1024 * 1024; # bytes
          max-free = 30 * 1024 * 1024 * 1024; # bytes
        };
      };
    };
  };

  networking.hostName = "MarcusAllen";

  system.stateVersion = 6;
}
