let
  kittyModule = {lib, ...}: {
    programs.kitty = {
      settings = {
        font_size = lib.mkForce "13";
      };
    };
  };
in {
  home-manager.sharedModules = [
    kittyModule
  ];
}
