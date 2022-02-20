vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
    disable = { "org" },
  },
})
