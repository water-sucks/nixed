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
    backupFileExtension = "backup";
    sharedModules = lib.flatten [
      {
        programs.home-manager.enable = true;
        manual.json.enable = true;
        news.display = "show";
        home.stateVersion = "21.11";
      }
      (with lib; collectLeaves ../../home/modules)
      (args: {
        imports = with inputs;
          [
            nix-colors.homeManagerModule
            sops-nix.homeManagerModules.sops
          ]
          ++ (lib.genModules args "profiles" ../../home/profiles);
      })
    ];
  };
}
