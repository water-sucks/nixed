require("Comment").setup({
  padding = true,
  sticky = true,
  ignore = nil,
  toggler = {
    line = "gcc",
    block = "gbc",
  },
  extra = {
    above = "gc0",
    below = "gco",
    eol = "gcA",
  },
  mappings = {
    basic = true,
    extra = true,
    extended = false,
  },
})

require("which-key").register({
  gb = {
    name = "Block comment",
    c = "Comment current line",
  },
  gc = {
    name = "Line comment",
    c = "Comment current line",
    ["0"] = "Comment above line",
    o = "Comment below line",
    A = "Comment end of line",
  },
}, {
  mode = "n",
  silent = true,
  noremap = true,
})

require("which-key").register({
  gb = "Block comment selected",
  gc = "Line comment selected",
}, {
  mode = "x",
  silent = true,
  noremap = true,
})
