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
      name = "Colloid-grey-dark";
      package = pkgs.colloid-icon-theme.override {
        colorVariants = ["grey"];
      };
    };
    theme = {
      name = "Vimix-dark-ruby";
      package = pkgs.vimix-gtk-themes.override {
        themeVariants = ["ruby"];
        colorVariants = ["dark"];
        tweaks = ["flat" "grey"];
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
