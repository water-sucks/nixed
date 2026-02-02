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
    sharedModules = [
      {
        programs.home-manager.enable = true;
        manual.json.enable = true;
        news.display = "show";
        home.stateVersion = "21.11";
      }
      inputs.optnix.homeModules.optnix
      inputs.sops-nix.homeManagerModules.sops
      ../../home/modules
    ];
  };
}
