{
  pkgs,
  lib,
}: {
  ron = import ./formats/ron.nix {inherit pkgs lib;};
  nvfetcherToml = import ./formats/nvfetcher.nix {inherit pkgs lib;};
}
