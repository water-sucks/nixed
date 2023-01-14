require("zen-mode").setup({
  window = {
    width = 0.80,
    height = 0.80,
  },
})

require("which-key").register({
  z = { "<cmd>ZenMode<CR>", "Toggle zen-mode" },
}, {
  prefix = "<Leader>",
})
