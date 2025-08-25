{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;

  icons = pkgs.fetchFromGitHub {
    owner = "k0nserv";
    repo = "kitty-icon";
    rev = "7f631a61bcbdfb268cdf1c97992a5c077beec9d6";
    hash = "sha256-AXU1KOXaEiAMTkgkR+yVc8g4FZq8TqXj9imswCHhNKc=";
  };
  icon = "${icons}/build/neue_outrun.icns";

  fileicon =
    if pkgs.stdenv.system == "aarch64-darwin"
    then "/opt/homebrew/bin/fileicon"
    else "/usr/local/bin/fileicon";

  c = config.colorscheme.palette;
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
          name =
            if isLinux
            then "BerkeleyMono Nerd Font"
            else "BerkeleyMonoNerdFont-Regular";
          size = lib.mkDefault 10;
        };
        settings = {
          macos_option_as_alt = "both";

          allow_remote_control = "yes";

          cursor = "#${c.pink}";
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

          url_color = "#${c.pink}";

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
          color12 = "#${c.pink}";
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
    (lib.mkIf isLinux {
      xdg.mimeApps.defaultApplications = {
        "mimetype" = "kitty.desktop";
        "application/x-terminal-emulator" = "kitty.desktop";
        "x-terminal-emulator" = "kitty.desktop";
        "x-scheme-handler/terminal" = "kitty.desktop";
      };
    })
    (lib.mkIf isDarwin {
      homebrew.casks = [
        "kitty"
      ];
      homebrew.brews = [
        "fileicon"
      ];

      home.activation.setKittyIcon = lib.hm.dag.entryAfter ["writeBoundary"] ''
        original_sum=$(sha256sum /Applications/kitty.app/Contents/Resources/kitty.icns)

        ${fileicon} -q set /Applications/kitty.app ${icon}

        if [ "$original_sum" != "$(sha256sum /Applications/kitty.app/Contents/Resources/kitty.icns)" ]; then
          killall Dock && killall Finder
        fi
      '';
    })
  ]
