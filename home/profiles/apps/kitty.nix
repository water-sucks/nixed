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

          allow_remote_control = "yes";

          cursor = "#FF7979";
          cursor_text_color = "#C9C1C9";

          active_tab_foreground = "#C9C1C9";
          active_tab_background = "#B76E79";
          active_tab_font_style = "bold";
          inactive_tab_foreground = "#B76E79";
          inactive_tab_background = "#281C2B";
          tab_bar_margin_color = "none";

          mark1_foreground = "#C9C1C9";
          mark1_background = "#9E4244";

          active_border_color = "#C9C1C9";
          inactive_border_color = "#9E4244";
          bell_border_color = "#9E4244";
          visual_bell_color = "none";

          selection_foreground = "#C9C1C9";
          selection_background = "#281C2B";

          url_color = "#FF7979";

          background = "#000000";
          foreground = "#C9C1C9";

          # black
          color0 = "#101010";
          color8 = "#281C2B";
          # red
          color1 = "#9E4244";
          color9 = "#F85149";
          # green
          color2 = "#FF7979";
          color10 = "#F6ACA7";
          # yellow
          color3 = "#A26B35";
          color11 = "#F08838";
          # blue
          color4 = "#B76E79";
          color12 = "#281C2B";
          # magenta
          color5 = "#8B2950";
          color13 = "#EB6F92";
          # cyan (substituted with gray instead)
          color6 = "#4D5566";
          color14 = "#8A95A2";
          # white
          color7 = "#8B8B8B";
          color15 = "#C9C1C9";
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
