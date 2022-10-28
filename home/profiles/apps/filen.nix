{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkMerge [
  {
    home.file."Documents/Notes".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Documents/Cloud/Notes";
  }
  (lib.mkIf pkgs.stdenv.isLinux {
    home.packages = with pkgs; [
      filen-desktop
    ];
  })
]
