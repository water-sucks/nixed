vim.opt.list = true
vim.opt.listchars:append("eol:↴")
require("indent_blankline").setup({
  show_end_of_line = true,
  filetype_exclude = {
    "FTerm",
    "terminal",
  },
  buftype_exclude = {
    "nofile",
    "terminal",
  },
})
