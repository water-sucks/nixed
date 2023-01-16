local wk = require("which-key")

wk.register({
  ss = { "<Plug>(leap-forward-to)", "Leap forward" },
  sS = { "<Plug>(leap-backward-to)", "Leap backward" },
  sw = { "<Plug>(leap-cross-window)", "Leap across windows" },
}, {
  mode = { "n", "x", "o" },
})

wk.register({
  u = { "<Plug>(leap-forward-till)", "Leap forward until" },
  U = { "<Plug>(leap-backward-till)", "Leap backward until" },
}, {
  mode = { "x", "o" },
})
