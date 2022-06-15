local augend = require("dial.augend")
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
