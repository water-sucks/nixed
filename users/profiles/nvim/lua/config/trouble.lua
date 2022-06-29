require("trouble").setup({})

require("which-key").register({
  x = {
    name = "Trouble",
    t = { ":TroubleToggle<CR>", "Toggle diagnostics" },
    q = { ":TroubleToggle quickfix<CR>", "Toggle quickfixes" },
  },
}, {
  mode = "n",
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})
