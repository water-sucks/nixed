local map = vim.api.nvim_set_keymap

map("n", "<Leader>tt", ":FloatermToggle<CR>", { silent = true, noremap = true })
map("n", "<Leader>tn", ":FloatermNext<CR>", { silent = true, noremap = true })
map("n", "<Leader>tp", ":FloatermPrev<CR>", { silent = true, noremap = true })
map("n", "<Leader>tN", ":FloatermNew<CR>", { silent = true, noremap = true })
map("n", "<Leader>tk", ":FloatermKill<CR>", { silent = true, noremap = true })
