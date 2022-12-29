require("indent_blankline").setup({
  show_end_of_line = true,
  filetype_exclude = {
    "NvimTree",
    "Searchbox",
    "SidebarNvim",
    "FTerm",
    "terminal",
  },
  buftype_exclude = {
    "NvimTree",
    "nofile",
    "terminal",
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
