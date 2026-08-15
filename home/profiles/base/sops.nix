{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isDarwin isLinux;
in {
  home.activation.sops = lib.hm.dag.entryAfter ["writeBoundary"] (
    (lib.optionalString isLinux ''
      systemctl --user start sops-nix
    '')
    + (lib.optionalString isDarwin ''
      launchctl start sops-nix
    '')
  );
}
