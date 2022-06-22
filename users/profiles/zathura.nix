{ self, config, pkgs, lib, ... }:

let
  inherit (pkgs.stdenv) isLinux;
in
lib.mkMerge [
  {
    programs.zathura = {
      enable = true;
      package = with pkgs;
        if isLinux then
          zathura
        else
          runCommand "zathura-0.0.0" { } "mkdir $out";
      options = {
        selection-clipboard = "clipboard";
      };
      extraConfig = ''
        map <C-i> recolor
      '';
    };
  }
  (lib.mkIf isLinux {
    xdg.mimeApps.defaultApplications = {
      "application/pdf" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
      "application/x-pdf" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
      "application/fdf" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
      "application/xdp" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
      "application/xfdf" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
      "application/pdx" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
    };
  })
]
