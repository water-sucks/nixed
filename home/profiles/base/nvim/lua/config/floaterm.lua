vim.g.floaterm_autoinsert = true
vim.g.floaterm_keymap_new = "<F7>"
vim.g.floaterm_keymap_prev = "<F8>"
vim.g.floaterm_keymap_next = "<F9>"
vim.g.floaterm_keymap_toggle = "<F12>"

require("which-key").register({
  t = {
    name = "Floaterm",
    t = { ":FloatermToggle<CR>", "Toggle terminal" },
    n = { ":FloatermNext<CR>", "Move to next terminal" },
    p = { ":FloatermPrev<CR>", "Move to previous terminal" },
    N = { ":FloatermNew<CR>", "Create new terminal" },
    k = { ":FloatermKill<CR>", "Kill terminal" },
  },
}, {
  mode = "n",
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})
