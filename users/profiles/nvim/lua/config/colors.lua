require("github-theme").setup({
  theme_style = "dark_default",
  function_style = "italic",
  sidebars = { "terminal", "floaterm", "packer", "NvimTree" },
  colors = {
    bg = "#050505",
    bg_sidebar = "#050505",
    hint = "orange",
    error = "#ff0000",
  },
  overrides = function(_)
    return {
      DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
      TSField = {},
    }
  end,
})
