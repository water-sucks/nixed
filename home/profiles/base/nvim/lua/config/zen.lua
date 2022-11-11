require("zen-mode").setup({
  window = {
    width = 0.80,
    height = 0.80,
  },
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

require("which-key").register({
  z = { "<cmd>ZenMode<CR>", "Toggle zen-mode" },
}, {
  mode = "n",
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})
