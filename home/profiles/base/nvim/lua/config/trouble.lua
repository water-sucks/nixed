require("trouble").setup({})

require("which-key").register({
  x = {
    name = "Trouble",
    x = { "<cmd>TroubleToggle<CR>", "Toggle diagnostics" },
    q = { "<cmd>TroubleToggle quickfix<CR>", "Toggle quickfixes" },
  },
}, {
  mode = "n",
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})
