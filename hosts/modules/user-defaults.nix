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
        imports =
          [
            inputs.android.hmModule
            inputs.nix-colors.homeManagerModule
            inputs.impermanence.nixosModules.home-manager.impermanence
          ]
          ++ (lib.genModules args "profiles" ../../home/profiles);
      })
    ];
  };
}
