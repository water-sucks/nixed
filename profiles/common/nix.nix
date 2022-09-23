{inputs, ...}: {
  nix = {
    gc.automatic = true;
    registry = {
      nixpkgs.flake = inputs.nixpkgs;
    };
    extraOptions = ''
      min-free = 536870912
      keep-outputs = true
      keep-derivations = true
      fallback = true
    '';
  };
}
