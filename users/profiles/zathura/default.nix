{ self, config, pkgs, ... }:

{
  programs.zathura = {
    enable = true;
    options = {
      selection-clipboard = "clipboard";
      # recolor = true;
      # recolor-darkcolor = "#dcdccc";
      # recolor-lightcolor = "#1f1f1f";
    };
  };

  xdg.mimeApps.defaultApplications = {
    "application/pdf" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
    "application/x-pdf" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
    "application/fdf" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
    "application/xdp" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
    "application/xfdf" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
    "application/pdx" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
  };
}
