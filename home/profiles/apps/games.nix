{
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    # nsmb-mvl
    dolphin-emu
  ];

  persistence = {
    directories = [
      ".config/unity3d/ipodtouch0218/NSMB-MarioVsLuigi"
      ".config/dolphin-emu"
      ".steam"
      ".local/share/Steam"
    ];
  };
}
