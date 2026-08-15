{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux;
in
  lib.mkIf isLinux {
    xdg.mimeApps.enable = true;

    home.activation = {
      deleteMimeappsList = lib.hm.dag.entryBefore ["checkLinkTargets"] ''
        rm $VERBOSE_ARG -f $HOME/.config/mimeapps.list
      '';
    };
  }
