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
    # Force-disable syncthing-init from running.
    # This is a temporary measure and will be
    # removed in the future.
    systemd.user.services.syncthing-init = {
      Service = {
        ExecStart = lib.mkForce "${pkgs.coreutils}/bin/true";
      };
    };

    persistence = {
      directories = [
        ".config/syncthing"
      ];
    };
  })
]
