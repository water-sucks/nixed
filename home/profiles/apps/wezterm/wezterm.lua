local wezterm = require("wezterm")

return {
  font = wezterm.font_with_fallback({
    "IBM Plex Mono",
    "BlexMono Nerd Font",
    "IBM Plex Sans JP",
    "JetBrains Mono",
  }),
  use_ime = true,
  font_size = 10,
  warn_about_missing_glyphs = false,

  colors = {
    foreground = "#FFFAFA",
    background = "#050505",

    cursor_fg = "#111111",
    cursor_bg = "#FF7979",
    cursor_border = "#111111",

    selection_fg = "#FFFAFA",
    selection_bg = "#231624",

    scrollbar_thumb = "#222222",
    split = "#444444",

    ansi = {
      "#181818", -- black
      "#960042", -- red
      "#FF0000", -- green
      "#FF5D05", -- yellow
      "#FF2044", -- blue
      "#FFEDCF", -- magenta
      "#6F0027", -- cyan
      "#FFDAF1", -- white
    },
    brights = {
      "#333333", -- black
      "#870300", -- red
      "#690000", -- green
      "#6F2700", -- yellow
      "#FF3344", -- blue
      "#FFFFB5", -- magenta
      "#F50056", -- cyan
      "#FFE6DA", -- white
    },

    tab_bar = {
      foreground = "#FFFAFA",
      background = "#333333",

      active_tab = {
        fg_color = "#FFFAFA",
        bg_color = "#222222",
      },
    },
  },

  window_padding = {
    left = "3px",
    right = "3px",
    top = "3px",
    bottom = "3px",
  },

  enable_tab_bar = true,
  tab_bar_at_bottom = true,
  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = false,
}
