local use = require("utils").use

local colorscheme_spec = use("projekt0n/github-nvim-theme")

colorscheme_spec.config = function()
  require("github-theme").setup({
    theme_style = "dark_default",
    function_style = "italic",
    sidebars = { "terminal", "FTerm" },
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
        NonText = { fg = c.black },
        DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },

        ["@constructor.lua"] = { fg = c.syntax.variable },
        ["@field"] = { fg = c.syntax.variable },

        IndentBlanklineIndent1 = { fg = c.fg_dark },
        IndentBlanklineIndent2 = { fg = c.fg_dark },
        IndentBlanklineIndent3 = { fg = c.fg_dark },
        IndentBlanklineIndent4 = { fg = c.fg_dark },
        IndentBlanklineIndent5 = { fg = c.fg_dark },
        IndentBlanklineIndent6 = { fg = c.fg_dark },

        SmoothCursor = { fg = c.fg_dark },

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
end

local colorizer_spec = use("norcalli/nvim-colorizer.lua", {
  event = "CursorHold",
  config = function()
    require("colorizer").setup()
  end,
})

local highlight_current_n_spec = use("rktjmp/highlight-current-n.nvim", {
  event = "CursorHold",
  config = function()
    local map = vim.keymap.set
    local augroup = vim.api.nvim_create_augroup
    local au = vim.api.nvim_create_autocmd

    map("n", "n", "<Plug>(highlight-current-n-n)", { noremap = false })
    map("n", "N", "<Plug>(highlight-current-n-N)", { noremap = false })

    map("n", "*", "*N", { noremap = true })

    augroup("ClearSearchHL", { clear = true })
    au("CmdlineEnter", {
      group = "ClearSearchHL",
      pattern = "/,\\?",
      callback = function()
        vim.o.hlsearch = true
      end,
    })
    au("CmdlineLeave", {
      group = "ClearSearchHL",
      pattern = "/,\\?",
      callback = function()
        vim.o.hlsearch = false
        require("highlight_current_n")["/,?"]()
      end,
    })
  end,
})

local lush_spec = use("rktjmp/lush.nvim", {
  event = "CursorHold",
})

return {
  colorscheme_spec,
  colorizer_spec,
  highlight_current_n_spec,
  lush_spec,
}
