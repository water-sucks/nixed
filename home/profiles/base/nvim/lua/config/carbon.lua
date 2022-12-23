require("carbon").setup({})

require("which-key").register({
  l = {
    name = "List files",
    c = { "<cmd>Carbon<CR>", "Show files in this buffer" },
    f = { "<cmd>Fcarbon<CR>", "Show files on left" },
    l = { "<cmd>Lcarbon<CR>", "Show files in floating window" },
  },
}, {
  mode = "n",
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})
