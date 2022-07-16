vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
  },
  ensure_installed = { "norg", "norg_meta" },
  playground = {
    enable = true,
  },
})
