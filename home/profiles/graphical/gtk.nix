{
  pkgs,
  lib,
  ...
}: {
  assertions = with lib; [
    (hm.assertions.assertPlatform "gtk" pkgs platforms.linux)
  ];

  home.sessionVariables = {
    GTK_THEME = "vimix-dark-ruby";
  };

  gtk = {
    enable = true;
    font = {
      package = pkgs.ibm-plex;
      name = "IBM Plex Sans";
    };
    iconTheme = {
      name = "Colloid-grey-dark";
      package = pkgs.stable.colloid-icon-theme.override {
        colorVariants = ["grey"];
      };
    };
    theme = {
      name = "vimix-dark-ruby";
      package = pkgs.vimix-gtk-themes.override {
        themeVariants = ["ruby"];
        colorVariants = ["dark"];
        tweaks = ["flat" "grey"];
      };
    };
    gtk3.extraCss = ''
      decoration, window, window.background, window.titlebar, * {
        border-radius: 0px;
      }
    '';
  };

  # Force qt to mimic configured gtk theme
  qt = {
    enable = true;
    platformTheme.name = "gtk3";
  };
}
