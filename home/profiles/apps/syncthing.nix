{
  config,
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
    home.persistence."/persist/home/${config.home.username}" = {
      directories = [
        ".config/syncthing"
      ];
    };
  })
]
