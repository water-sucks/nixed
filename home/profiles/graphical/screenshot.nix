{lib, ...}: {
  home.activation.createScreenshotsDir = lib.hm.dag.entryBefore ["checkLinkTargets"] ''
    mkdir -p $HOME/Pictures/Screenshots
  '';
}
