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
  },
})

wk.register({
  ["["] = { require("dial.map").inc_normal(), "Increment" },
  ["]"] = { require("dial.map").dec_normal(), "Decrement" },
}, {
  mode = "n",
  prefix = "<Leader>",
  noremap = true,
})

wk.register({
  ["["] = { require("dial.map").inc_visual(), "Increment" },
  ["]"] = { require("dial.map").dec_visual(), "Decrement" },
}, {
  mode = "x",
  prefix = "<Leader>",
  noremap = true,
})
