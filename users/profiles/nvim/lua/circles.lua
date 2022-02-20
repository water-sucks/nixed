require("circles").setup({
  icons = {
    empty = "",
    filled = "",
    lsp_prefix = "",
  },
  -- override lsp_diagnostic virtual-text icon with `icons.lsp_prefix`
  lsp = true,
})
