local map = vim.keymap.set
local augend = require("dial.augend")
local wk = require("which-key")

require("dial.config").augends:register_group({
  default = {
    augend.integer.alias.decimal_int,
    augend.integer.alias.hex,
    augend.integer.alias.binary,
    augend.constant.alias.Alpha,
    augend.constant.alias.alpha,
    augend.constant.alias.bool,
    augend.date.alias["%m/%d/%Y"],
    augend.date.alias["%H:%M"],
    augend.date.alias["%H:%M:%S"],
    augend.semver.alias.semver,
    augend.hexcolor.new({
      case = "lower",
    }),
  },
})

map("n", "<C-a>", require("dial.map").inc_normal(), { silent = true })
map("n", "<C-x>", require("dial.map").dec_normal(), { silent = true })
map("v", "<C-a>", require("dial.map").inc_visual(), { silent = true })
map("v", "<C-x>", require("dial.map").dec_visual(), { silent = true })
map("v", "g<C-a>", require("dial.map").inc_gvisual(), { silent = true })
map("v", "g<C-x>", require("dial.map").dec_gvisual(), { silent = true })

wk.register({
  ["["] = { require("dial.map").inc_normal(), "Increment" },
  ["]"] = { require("dial.map").dec_normal(), "Decrement" },
}, {
  prefix = "<Leader>",
})

wk.register({
  ["["] = { require("dial.map").inc_visual(), "Increment" },
  ["]"] = { require("dial.map").dec_visual(), "Decrement" },
}, {
  mode = "x",
  prefix = "<Leader>",
})
