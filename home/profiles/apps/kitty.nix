{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;

  icon = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/k0nserv/kitty-icon/main/kitty.icns";
    sha256 = "0n6fb98pj86cm5zl3727vrayxvcbvnkn07sjbyixk4npcmd6w5bg";
  };

  c = config.colorscheme.colors;
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

          cursor = "#${c.salmon}";
          cursor_text_color = "#${c.fg}";

          active_tab_foreground = "#${c.fg}";
          active_tab_background = "#${c.dark-pink}";
          active_tab_font_style = "bold";
          inactive_tab_foreground = "#${c.dark-pink}";
          inactive_tab_background = "#${c.dark-purple}";
          tab_bar_margin_color = "none";

          mark1_foreground = "#${c.fg}";
          mark1_background = "#${c.red}";

          active_border_color = "#${c.fg}";
          inactive_border_color = "#${c.red}";
          bell_border_color = "#${c.red}";
          visual_bell_color = "none";

          selection_foreground = "#${c.fg}";
          selection_background = "#${c.dark-purple}";

          url_color = "#${c.salmon}";

          background = "#${c.bg}";
          foreground = "#${c.fg}";

          # black
          color0 = "#${c.bg-secondary}";
          color8 = "#${c.dark-purple}";
          # red
          color1 = "#${c.dark-red}";
          color9 = "#${c.light-red}";
          # green
          color2 = "#${c.red}";
          color10 = "#${c.light-pink}";
          # yellow
          color3 = "#${c.orange}";
          color11 = "#${c.light-orange}";
          # blue
          color4 = "#${c.dark-pink}";
          color12 = "#${c.salmon}";
          # magenta
          color5 = "#${c.magenta}";
          color13 = "#${c.pink}";
          # cyan (substituted with gray instead)
          color6 = "#${c.fg-dark}";
          color14 = "#${c.fg-secondary}";
          # white
          color7 = "#${c.gray}";
          color15 = "#${c.fg}";
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
