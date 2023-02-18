{inputs, ...}: {
  home-manager = {
    sharedModules = [
      (_: {
        imports = [
          inputs.impermanence.nixosModules.home-manager.impermanence
        ];
      })
    ];
  };
  programs.fuse.userAllowOther = true; # Used for home.persistence.allowOther options, must be enabled
}
