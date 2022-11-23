require("github-theme").setup({
  theme_style = "dark_default",
  function_style = "italic",
  sidebars = { "terminal", "floaterm", "packer", "NvimTree" },
  colors = {
    bg = "#050505",
    bg_sidebar = "#050505",
    hint = "orange",
    error = "#ff0000",

    syntax = {
      string = "#cc61a1",
    },
  },
  dev = true, -- Needed to add additional plugins' highlight groups
  overrides = function(c)
    return {
      DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },

      TSField = {},

      IndentBlanklineIndent1 = { fg = c.fg_dark },
      IndentBlanklineIndent2 = { fg = c.fg_dark },
      IndentBlanklineIndent3 = { fg = c.fg_dark },
      IndentBlanklineIndent4 = { fg = c.fg_dark },
      IndentBlanklineIndent5 = { fg = c.fg_dark },
      IndentBlanklineIndent6 = { fg = c.fg_dark },

      debugPC = { bg = c.bg_visual_selection },

      DapUIVariable = { fg = c.syntax.variable },
      DapUIScope = { fg = c.syntax.keyword },
      DapUIType = { fg = c.syntax.keyword },
      DapUIValue = { fg = c.syntax.string },
      DapUIModifiedValue = { fg = c.syntax.string, style = "bold" },
      DapUIDecoration = { fg = c.syntax.comment },
      DapUIThread = { fg = c.syntax.keyword },
      DapUIStoppedThread = { fg = c.syntax.keyword, style = "italic" },
      DapUIFrameName = { fg = c.syntax.variable },
      DapUISource = { fg = c.syntax.keyword },
      DapUILineNumber = { fg = c.syntax.comment },
      DapUIFloatBorder = { fg = c.border },
      DapUIWatchesEmpty = { fg = c.syntax.comment },
      DapUIWatchesValue = { fg = c.syntax.string },
      DapUIWatchesError = { fg = c.error },
      DapUIBreakpointsPath = { fg = c.syntax.keyword },
      DapUIBreakpointsInfo = { fg = c.syntax.keyword },
      DapUIBreakpointsCurrentLine = { fg = c.syntax.variable },
      DapUIBreakpointsLine = { fg = c.syntax.comment },
      DapUIBreakpointsDisabledLine = { fg = c.syntax.comment },
    }
  end,
})
