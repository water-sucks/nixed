{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    nsmb-mvl
    dolphin-emu
  ];

  home.persistence.${config.persistence.directory} = {
    directories = [
      ".config/unity3d/ipodtouch0218/NSMB-MarioVsLuigi"
      ".config/dolphin-emu"
      {
        directory = ".steam";
        method = "symlink";
      }
      {
        directory = ".local/share/Steam";
        method = "symlink";
      }
    ];
  };
}
