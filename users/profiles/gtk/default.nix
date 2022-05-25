{ self, config, pkgs, ... }:

{
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
    gtk3.extraCss = ''
      decoration
      {
          border-radius: 6px 6px 0 0;
          border-width: 0px;
          /*box-shadow: 1px 12px 12px 12px rgba(0, 0, 0, 0.4), 0 0 0 1px rgba(0, 0, 0, 0.18);*/
          box-shadow: none;
          margin: 4px;
      }
      decoration:backdrop
      {
          border-radius: 6px 6px 0 0;
          border-width: 0px;
          /*box-shadow: 1px 12px 12px 12px rgba(0, 0, 0, 0.4), 0 0 0 1px rgba(0, 0, 0, 0.18);*/
          box-shadow: none;
          margin: 4px;
      }
    '';
  };
}
