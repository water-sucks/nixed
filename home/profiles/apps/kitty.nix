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
          cursor_text_color = "#C9D1D9";

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

          url_color = "#1A8A97";

          background = "#000000";
          foreground = "#D9D9D9";

          # black
          color0 = "#101010";
          color8 = "#242424";
          # red
          color1 = "#6D0011";
          color9 = "#AA4B42";
          # green
          color2 = "#F85149";
          color10 = "#F6ACA7";
          # yellow
          color3 = "#A26B35";
          color11 = "#F08838";
          # blue
          color4 = "#8B2950";
          color12 = "#242424";
          # magenta
          color5 = "#8B2950";
          color13 = "#CF578A";
          # cyan (substituted with gray instead)
          color6 = "#4D5566";
          color14 = "#61697A";
          # white
          color7 = "#8B8B8B";
          color15 = "#C5C5C5";
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
