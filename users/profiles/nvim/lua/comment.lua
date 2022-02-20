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
