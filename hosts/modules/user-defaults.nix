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
      (with lib; collectLeaves ../../home/modules)
      (args: {
        imports = lib.genModules args "profiles" ../../home/profiles;
      })
      ({lib, ...}: {
        home.activation.cleanupOldProfile = lib.hm.dag.entryAfter ["writeBoundary"] ''
          if [[ -e "$HOME/.nix-profile"/manifest.json ]] ; then
            nix profile list \
              | { grep 'home-manager-path$' || test $? = 1; } \
              | awk -F ' ' '{ print $4 }' \
              | cut -d ' ' -f 4 \
              | xargs -t nix profile remove
          fi
        '';
      })
    ];
  };
}
