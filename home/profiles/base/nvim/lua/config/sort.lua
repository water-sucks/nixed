local wk = require("which-key")

require("sort").setup({})

wk.register({
  ["1"] = {
    name = "Sort",
    o = { "<cmd>Sort<CR>", "Sort line" },
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
  s = { "<cmd>Sort<CR>", "Sort selection" },
}, {
  mode = "x",
  prefix = "<Leader>",
  noremap = true,
  silent = true,
})
