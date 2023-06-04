{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    nsmb-mvl
  ];

  home.persistence."/persist/home/${config.home.username}" = {
    directories = [
      ".config/unity3d/ipodtouch0218/NSMB-MarioVsLuigi"
    ];
  };
}
