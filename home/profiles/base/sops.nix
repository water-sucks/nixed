{
  pkgs,
  lib,
  ...
}: {
  # On Darwin, sops-nix's own `sops-nix` activation step already reloads
  # (and thereby starts) the org.nix-community.home.sops-nix agent.
  home.activation.sops = lib.mkIf pkgs.stdenv.hostPlatform.isLinux (
    lib.hm.dag.entryAfter ["writeBoundary"] ''
      systemctl --user start sops-nix
    ''
  );
}
