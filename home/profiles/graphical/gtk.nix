{
  config,
  pkgs,
  lib,
  ...
}: {
  assertions = with lib; [
    (hm.assertions.assertPlatform "gtk" pkgs platforms.linux)
  ];

  home.sessionVariables = {
    GTK_THEME = config.gtk.theme.name;
  };

  gtk = {
    enable = true;
    font = {
      package = pkgs.ibm-plex;
      name = "IBM Plex Sans";
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    theme = {
      name = "Orchis-Dark";
      package = pkgs.orchis-theme.override {
        tweaks = ["solid" "compact" "black" "primary" "submenu"];
        border-radius = 2;
      };
    };

    gtk3 = {
      extraConfig = {
        gtk-application-prefer-dark-theme = 1;
      };
      extraCss = ''
        decoration, window, window.background, window.titlebar, * {
          border-radius: 0px;
        }
      '';
    };
    gtk4 = {
      inherit (config.gtk) theme;
      extraConfig = {
        gtk-application-prefer-dark-theme = 1;
      };
    };
  };

  dconf.settings = {
    "org/gnome/desktop/interface".color-scheme = "prefer-dark";
  };

  # Force qt to mimic configured gtk theme
  qt = {
    enable = true;
    platformTheme.name = "gtk3";
  };
}
