{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkMerge [
  {
    programs.chromium = {
      enable = true;
      package = with pkgs;
        if stdenv.isLinux
        then brave
        else runCommand "brave-0.0.0" {} "mkdir $out";
      extensions = [
        "cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock Origin
        "eimadpbcbfnmbkopoojfekhnkhdbieeh" # Dark Reader
        "bkdgflcldnnnapblkhphbgpggdiikppg" # DuckDuckGo Privacy Essentials
        "nngceckbapebfimnlniiiahkandclblb" # Bitwarden
      ];
    };
  }
  (lib.mkIf pkgs.stdenv.isLinux {
    home.persistence.${config.persistence.directory} = {
      directories = [
        ".config/BraveSoftware"
      ];
    };
  })
]
