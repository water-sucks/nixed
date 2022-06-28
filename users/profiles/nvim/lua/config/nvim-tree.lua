require("nvim-tree").setup({
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {},
  open_on_tab = true,
  hijack_cursor = false,
  update_cwd = false,
  hijack_directories = {
    enable = true,
    auto_open = false,
  },
  actions = {
    open_file = {
      resize_window = true,
    },
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  filters = {
    dotfiles = false,
    custom = {
      ".DS_Store",
    },
  },
  renderer = {
    icons = {
      show = {
        folder = true,
        file = true,
        folder_arrow = true,
        git = false,
      },
      glyphs = require("circles").get_nvimtree_glyphs(),
    },
    highlight_git = true,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = "left",
  },
})
