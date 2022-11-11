require("sidebar-nvim").setup({
  disable_default_keybindings = 0,
  bindings = nil,
  open = false,
  side = "right",
  initial_width = 35,
  update_interval = 1000,
  sections = { "datetime", "git", "diagnostics" },
  section_separator = "-----",
  containers = {
    attach_shell = "/bin/sh",
    show_all = true,
    interval = 5000,
  },
  datetime = { format = "%a %b %d, %H:%M", clocks = { { name = "local" } } },
  todos = { ignored_paths = { "~" } },
})

require("which-key").register({
  b = {
    name = "Sidebar",
    t = { "<cmd>SidebarNvimToggle<CR>", "Toggle sidebar" },
    r = { "<cmd>SidebarNvimUpdate<CR>", "Refresh sidebar" },
  },
}, {
  mode = "n",
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})
