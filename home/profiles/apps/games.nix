{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux;
in
  lib.mkIf isLinux {
    home.packages = with pkgs; [
      nsmb-mvl
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
