require("Comment").setup({
  padding = true,
  sticky = true,
  ignore = nil,
  toggler = {
    line = "<Leader>cc",
    block = "<Leader>bc",
  },
  opleader = {
    line = "<Leader>c",
    block = "<Leader>b",
  },
  extra = {
    above = "<Leader>cO",
    below = "<Leader>co",
    eol = "<Leader>cA",
  },
  mappings = {
    basic = true,
    extra = true,
    extended = false,
  },
})
