{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    nsmb-mvl
    vics-mvlo
  ];

  home.persistence.${config.persistence.directory} = {
    directories = [
      ".config/unity3d/ipodtouch0218/NSMB-MarioVsLuigi"
      ".config/unity3d/vlco_o/NSMBVersus_ vic's Custom Match-inator"
      ".steam"
    ];
  };
}
