{
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  xdg.mimeApps.enable = true;

  home.activation = {
    deleteMimeappsList = lib.hm.dag.entryBefore ["checkLinkTargets"] ''
      rm $VERBOSE_ARG -f $HOME/.config/mimeapps.list
    '';
  };
}
