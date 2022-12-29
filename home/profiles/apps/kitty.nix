{
  pkgs,
  lib,
  ...
}: let
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
          if isLinux
          then kitty
          else runCommand "kitty-0.0.0" {} "mkdir $out";
        font = {
          name = "BlexMono Nerd Font";
          package = pkgs.nerdfonts.override {fonts = ["IBMPlexMono"];};
          size = 10;
        };
        settings = {
          macos_option_as_alt = "both";

          cursor = "#FF7979";
          cursor_text_color = "#111111";

          active_tab_foreground = "#FFFAFA";
          active_tab_background = "#B1003C";
          active_tab_font_style = "bold";
          inactive_tab_foreground = "#B1003C";
          inactive_tab_background = "#FFFAFA";
          tab_bar_margin_color = "none";

          mark1_foreground = "#FFFAFA";
          mark1_background = "#870300";

          active_border_color = "#FFFAFA";
          inactive_border_color = "#870300";
          bell_border_color = "#870300";
          visual_bell_color = "none";

          selection_foreground = "#FFFAFA";
          selection_background = "#231624";

          url_color = "#FF7979";

          color0 = "#181818";
          color8 = "#333333";
          color1 = "#960042";
          color9 = "#870300";
          color2 = "#FF0000";
          color10 = "#690000";
          color3 = "#FF5D05";
          color11 = "#6F2700";
          color4 = "#FF2044";
          color5 = "#FFEDCF";
          color12 = "#333333";
          color13 = "#FFFFB5";
          color6 = "#6F0027";
          color14 = "#F50056";
          color7 = "#FFDAF1";
          color15 = "#FFE6DA";

          background = "#050505";
        };
      };
    }
    (lib.mkIf isDarwin {
      home.activation.setKittyIcon = lib.hm.dag.entryAfter ["writeBoundary"] ''
        original_sum=$(sha256sum /Applications/kitty.app/Contents/Resources/kitty.icns)

        /usr/local/bin/fileicon -q set /Applications/kitty.app ${icon}

        if [ "$original_sum" != "$(sha256sum /Applications/kitty.app/Contents/Resources/kitty.icns)" ]; then
          killall Dock && killall Finder
        fi
      '';
    })
  ]
