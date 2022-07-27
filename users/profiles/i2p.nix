{
  self,
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux;

  sources = pkgs.callPackage firefox/_sources/generated.nix {};

  profile = sources.i2p-profile.src;
in
  lib.mkMerge [
    {
      programs.firefox.profiles."i2p" = {
        id = 1;
        isDefault = false;
        extraConfig = ''
          ${builtins.readFile "${profile}/src/profile/prefs.js"}
          ${builtins.readFile "${profile}/src/profile/user.js"}
        '';
      };
    }
    (lib.mkIf isLinux {
      home.packages = with pkgs; [
        i2p
      ];
    })
  ]
