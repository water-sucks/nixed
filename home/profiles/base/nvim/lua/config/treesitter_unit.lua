local wk = require("which-key")

wk.register({
  iu = { "<cmd>lua require('treesitter-unit').select()<CR>", "Treesitter unit" },
  au = { "<cmd>lua require('treesitter-unit').select(true)<CR>", "Treesitter unit" },
}, {
  mode = "x",
  noremap = true,
})

wk.register({
  iu = { "<cmd><C-u>lua require('treesitter-unit').select()<CR>", "Treesitter unit" },
  au = { "<cmd><C-u>lua require('treesitter-unit').select(true)<CR>", "Treesitter unit" },
}, {
  mode = "o",
  noremap = true,
})
