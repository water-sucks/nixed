vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 1,
}

vim.g.nvim_tree_git_hl = 1

require("nvim-tree").setup({
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {},
  open_on_tab = true,
  hijack_cursor = false,
  update_cwd = false,
  update_to_buf_dir = {
    enable = true,
    auto_open = false,
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
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = "left",
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {},
    },
  },
})

vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true, noremap = true })
