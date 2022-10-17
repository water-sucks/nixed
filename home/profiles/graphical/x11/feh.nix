{
  pkgs,
  lib,
  ...
}: {
  assertions = with lib; [
    (hm.assertions.assertPlatform "feh" pkgs platforms.linux)
  ];

  programs.feh.enable = true;
}
