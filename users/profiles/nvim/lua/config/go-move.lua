local map = vim.keymap.set

require("gomove").setup({
  map_defaults = false,
  reindent = true,
  undojoin = true,
  move_past_end_col = true,
})

map("n", "<S-h>", "<Plug>GoNSMLeft", {})
map("n", "<S-j>", "<Plug>GoNSMDown", {})
map("n", "<S-k>", "<Plug>GoNSMUp", {})
map("n", "<S-l>", "<Plug>GoNSMRight", {})

map("n", "<C-h>", "<Plug>GoNSDLeft", {})
map("n", "<C-j>", "<Plug>GoNSDDown", {})
map("n", "<C-k>", "<Plug>GoNSDUp", {})
map("n", "<C-l>", "<Plug>GoNSDRight", {})

map("x", "<S-h>", "<Plug>GoVSMLeft", {})
map("x", "<S-j>", "<Plug>GoVSMDown", {})
map("x", "<S-k>", "<Plug>GoVSMUp", {})
map("x", "<S-l>", "<Plug>GoVSMRight", {})

map("x", "<C-h>", "<Plug>GoVSDLeft", {})
map("x", "<C-j>", "<Plug>GoVSDDown", {})
map("x", "<C-k>", "<Plug>GoVSDUp", {})
map("x", "<C-l>", "<Plug>GoVSDRight", {})
