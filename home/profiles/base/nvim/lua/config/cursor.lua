require("smoothcursor").setup({
  autostart = true,
  cursor = "",
  texthl = "SmoothCursor",
  type = "default", -- define cursor movement calculate function, "default" or "exp" (exponential).
  fancy = {
    enable = false, -- enable fancy mode
  },
  disabled_filetypes = {
    "NvimTree",
    "Searchbox",
    "SidebarNvim",
    "floaterm",
    "terminal",
  },
})
