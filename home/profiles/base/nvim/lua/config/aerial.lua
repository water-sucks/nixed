require("aerial").setup({
  backends = { "treesitter", "markdown" }, -- LSP backend disabled, don't need fallback
  disable_max_lines = 20000,
  highlight_on_hover = true,
  layout = {
    default_direction = "left",
    min_width = 30,
  },
  on_attach = function(bufnr)
    require("which-key").register({
      o = {
        name = "Outline",
        t = { "<cmd>AerialToggle<CR>", "Toggle outline" },
        o = { "<cmd>AerialOpen<CR>", "Open outline" },
        c = { "<cmd>AerialClose<CR>", "Close outline" },
      },
    }, {
      mode = "n",
      buffer = bufnr,
      prefix = "<Leader>",
      silent = true,
      noremap = true,
    })
  end,
})
