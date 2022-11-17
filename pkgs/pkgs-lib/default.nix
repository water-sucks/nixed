{
  lib,
  pkgs,
}: {
  # Setting format types and generators. These do not fit in lib/types.nix,
  # because they depend on pkgs for rendering some formats
  formats = import ./formats.nix {
    inherit lib pkgs;
  };
}
