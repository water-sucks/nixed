local wk = require("which-key")

wk.register({
  iu = { ":lua require('treesitter-unit').select()<CR>", "Treesitter unit" },
  au = { ":lua require('treesitter-unit').select(true)<CR>", "Treesitter unit" },
}, {
  mode = "x",
  noremap = true,
})

wk.register({
  iu = { ":<C-u>lua require('treesitter-unit').select()<CR>", "Treesitter unit" },
  au = { ":<C-u>lua require('treesitter-unit').select(true)<CR>", "Treesitter unit" },
}, {
  mode = "o",
  noremap = true,
})
