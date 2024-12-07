{
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    obs-studio
    chatterino2
  ];

  persistence = {
    directories = [
      ".config/obs-studio"
      ".local/share/chatterino"
    ];
  };
}
