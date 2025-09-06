{
  config,
  pkgs,
  ...
}: let
  c = config.colorscheme.palette;

  yamlFormat = pkgs.formats.json {};

  darkroseTheme = {
    colors = {
      red = "${c.red}";
      dark_red = "${c.dark-red}";
      light_red = "${c.light-red}";
      orange = "${c.orange}";
      light_orange = "${c.light-orange}";
      dark_purple = "${c.dark-purple}";
      magenta = "${c.magenta}";
      dark_pink = "${c.dark-pink}";
      pink = "${c.pink}";
      light_pink = "${c.light-pink}";
      gray = "${c.gray}";
      fg = "${c.fg}";
      fg_dark = "${c.fg-dark}";
    };

    core = {
      normal_text = {};
      regular_file = {};
      reset_to_normal = {};

      directory = {
        foreground = "dark_pink";
      };

      symlink = {
        foreground = "pink";
      };

      multi_hard_link = {
        foreground = "pink";
      };

      fifo = {
        foreground = "magenta";
      };

      socket = {
        foreground = "magenta";
      };

      door = {
        foreground = "magenta";
      };

      block_device = {
        foreground = "light_orange";
        # background = "black";
      };

      character_device = {
        foreground = "light_orange";
        # background = "black";
      };

      broken_symlink = {
        foreground = "light_red";
        background = "dark_purple";
      };

      missing_symlink_target = {
        foreground = "light_red";
        background = "dark_purple";
      };

      setuid = {};
      setgid = {};
      file_with_capability = {};
      sticky_other_writable = {};
      other_writable = {};
      sticky = {};

      executable_file = {
        foreground = "dark_red";
      };
    };

    text = {
      special = {
        foreground = "orange";
        font-style = "bold";
      };

      todo = {
        foreground = "orange";
        font-style = "bold";
      };

      licenses = {
        foreground = "gray";
      };

      configuration = {
        foreground = "red";
      };

      other = {
        foreground = "red";
      };
    };

    markup = {
      foreground = "red";
    };

    programming = {
      source = {
        foreground = "red";
      };

      tooling = {
        foreground = "gray";

        continuous-integration = {
          foreground = "gray";
        };
      };
    };

    media = {
      foreground = "pink";
    };

    office = {
      foreground = "red";
    };

    archives = {
      foreground = "light_pink";
    };

    executable = {
      foreground = "dark_red";
    };

    unimportant = {
      foreground = "fg_dark";
    };
  };
in {
  programs.vivid = {
    enable = true;
    enableZshIntegration = false; # So LS_COLORS can be set for completion along with initialization
    activeTheme = "darkrose";
    themes = {
      darkrose = yamlFormat.generate "darkrose.yml" darkroseTheme;
    };
  };
}
