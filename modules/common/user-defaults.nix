{
  inputs,
  self,
  pkgs,
  lib,
  ...
}: {
  home-manager = {
    extraSpecialArgs = {
      inherit self inputs pkgs;
      lib = lib.extend (_: _: inputs.home.lib);
    };
    sharedModules = lib.flatten [
      {
        programs.home-manager.enable = true;
        manual.json.enable = true;
        news.display = "show";
        home.stateVersion = "21.11";
      }
      (with lib; attrValues (flattenTree (rakeLeaves ../../users/modules)))
      (args: {
        imports = lib.genModules args "profiles" ../../users/profiles;
      })
    ];
  };
}
