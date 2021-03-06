local wk = require("which-key")

require("sort").setup({})

wk.register({
  s = {
    name = "Sort",
    o = { ":Sort<CR>", "Sort line" },
    ['"'] = { 'vi"<Esc>:Sort<CR>', 'Sort until "' },
    ["'"] = { "vi'<Esc>:Sort<CR>", "Sort until '" },
    ["("] = { "vi(<Esc>:Sort<CR>", "Sort block inside ()" },
    ["["] = { "vi[<Esc>:Sort<CR>", "Sort block inside []" },
    ["{"] = { "vi{<Esc>:Sort<CR>", "Sort block inside {}" },
    ["p"] = { "vip<Esc>:Sort<CR>", "Sort block inside paragraph" },
  },
}, {
  mode = "n",
  prefix = "<Leader>",
  noremap = true,
  silent = true,
})

wk.register({
  s = { ":Sort<CR>", "Sort selection" },
}, {
  mode = "x",
  prefix = "<Leader>",
  noremap = true,
  silent = true,
})
