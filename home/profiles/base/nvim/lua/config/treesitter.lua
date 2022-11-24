vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

require("nvim-treesitter.configs").setup({
  -- This directory doesn't actually have any parsers in it;
  -- it's just to prevent the plugin from getting fussy because
  -- it can't write into the Nix store.
  parser_install_dir = vim.fn.stdpath("config") .. "/parsers",

  highlight = {
    enable = true,
  },
  playground = {
    enable = true,
  },
})
