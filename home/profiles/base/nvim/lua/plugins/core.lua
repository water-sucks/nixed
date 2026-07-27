local wk = require("which-key")
wk.setup({
  plugins = { presets = { g = false } },
  icons = { rules = false },
})
vim.keymap.set({ "n", "v", "x", "o" }, "s", "<cmd>WhichKey n s<CR>")
