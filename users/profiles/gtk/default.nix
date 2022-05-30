{ self, config, pkgs, ... }:

{
  home.sessionVariables = {
    GTK_THEME = "Orchis:dark";
  };

  gtk = {
    enable = true;
    font = {
      package = pkgs.ibm-plex;
      name = "IBM Plex Sans";
    };
    iconTheme = {
      name = "Orchis-dark";
      package = pkgs.orchis-theme;
    };
    theme = {
      name = "Orchis-dark";
      package = pkgs.orchis-theme;
    };
  };
}
