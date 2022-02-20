require("indent_blankline").setup({
  show_end_of_line = true,
  filetype_exclude = {
    "NvimTree",
    "Searchbox",
    "SidebarNvim",
    "terminal",
    "floaterm",
  },
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  },
})

vim.cmd([[
  augroup TerminalIndentBlanklineDisable
    au!
    au TermOpen term://* set filetype=terminal | set nonumber | set signcolumn=no | startinsert
    au TermClose term://* set number | set signcolumn=yes
    au FileType floaterm set nonumber | set signcolumn=no | startinsert
  augroup END
]])
