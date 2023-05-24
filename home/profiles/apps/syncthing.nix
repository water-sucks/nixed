{
  pkgs,
  lib,
  ...
}:
lib.mkMerge [
  {
    services.syncthing = {
      enable = true;
      # Just use the Web UI, lol.
      tray.enable = false;
    };
  }
  (lib.mkIf pkgs.stdenv.isLinux {
    home.persistence."/persist/home/varun" = {
      directories = [
        "Sync"
        ".config/syncthing"
      ];
    };
  })
]
