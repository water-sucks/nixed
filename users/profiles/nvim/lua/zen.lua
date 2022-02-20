require("twilight").setup({
  dimming = {
    alpha = 0.25,
    color = { "Normal", "#ffffff" },
    inactive = true,
  },
  context = 20,
  treesitter = true,
  expand = {
    "function",
    "method",
    "table",
    "if_statement",
  },
})

require("zen-mode").setup({
  plugins = {
    options = {
      enabled = true,
      ruler = false,
      showcmd = false,
    },
    twilight = { enabled = true },
    tmux = { enabled = false },
  },
})

vim.api.nvim_set_keymap(
  "n",
  "<Leader>zen",
  ":lua require('zen-mode').toggle({window={width=.80,height=.80}})<CR>",
  { noremap = true }
)
