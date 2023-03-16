_: {
  programs.vivid = {
    enable = true;
    theme = "darkrose";
    themes = {
      darkrose = {
        colors = {
          red = "9E4244";
          dark_red = "6D0011";
          light_red = "F85149";
          orange = "A26B35";
          light_orange = "F0883E";
          dark_purple = "281C2B";
          magenta = "8B2950";
          dark_pink = "B76E79";
          pink = "EB6F92";
          salmon = "FF7979";
          light_pink = "F6ACA7";
          gray = "8B8B8B";
          fg = "C9C1C9";
          fg_dark = "8A95A2";
        };

        core = {
          normal_text = {};
          regular_file = {};
          reset_to_normal = {};

          directory = {
            foreground = "dark_pink";
          };

          symlink = {
            foreground = "salmon";
          };

          multi_hard_link = {
            foreground = "salmon";
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
    };
  };
}
