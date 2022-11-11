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
        t = { ":AerialToggle<CR>", "Toggle outline" },
        o = { ":AerialOpen<CR>", "Open outline" },
        c = { ":AerialClose<CR>", "Close outline" },
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
