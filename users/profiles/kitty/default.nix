{ self, config, pkgs, lib, ... }:

let
  inherit (pkgs.stdenv) isLinux isDarwin;

  icon = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/k0nserv/kitty-icon/main/kitty.icns";
    sha256 = "0n6fb98pj86cm5zl3727vrayxvcbvnkn07sjbyixk4npcmd6w5bg";
  };
in
lib.mkMerge [
  {
    programs.kitty = {
      enable = true;
      package = with pkgs;
        if isLinux then
          kitty
        else
          runCommand "kitty-0.0.0" { } "mkdir $out";
      font = {
        name = "BlexMono Nerd Font";
        package = pkgs.nerdfonts.override { fonts = [ "IBMPlexMono" ]; };
        size = 10;
      };
      extraConfig = ''
        ${builtins.readFile ./theme.conf}
      '';
    };
  }
  (lib.mkIf isDarwin {
    home.activation.setKittyIcon = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      original_sum=$(sha256sum /Applications/kitty.app/Contents/Resources/kitty.icns)

      /usr/local/bin/fileicon -q set /Applications/kitty.app ${icon}

      if [ "$original_sum" != "$(sha256sum /Applications/kitty.app/Contents/Resources/kitty.icns)" ]; then
        killall Dock && killall Finder
      fi
    '';
  })
]
