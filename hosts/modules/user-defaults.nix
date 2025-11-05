{
  inputs,
  self,
  pkgs,
  pkgsStable,
  lib,
  ...
}: {
  home-manager = {
    extraSpecialArgs = {
      inherit self inputs pkgs pkgsStable;
      lib = lib.extend (_: _: inputs.home.lib);
    };
    backupFileExtension = "backup";
    sharedModules = lib.flatten [
      {
        programs.home-manager.enable = true;
        manual.json.enable = true;
        news.display = "show";
        home.stateVersion = "21.11";
      }
      (lib.collectLeaves ../../home/modules)
      (args: {
        imports = with inputs;
          [
            optnix.homeModules.optnix
            sops-nix.homeManagerModules.sops
          ]
          ++ (lib.genModules args "profiles" ../../home/profiles);
      })
    ];
  };
}
