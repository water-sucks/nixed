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
    persistence = {
      directories = [
        ".config/syncthing"
      ];
    };
  })
]
