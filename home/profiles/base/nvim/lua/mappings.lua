local map = vim.keymap.set

-- Window resizing
map("n", "<A-H>", "<C-w><", { silent = true, noremap = true })
map("n", "<A-J>", "<C-W>-", { silent = true, noremap = true })
map("n", "<A-K>", "<C-W>+", { silent = true, noremap = true })
map("n", "<A-L>", "<C-w>>", { silent = true, noremap = true })

map("n", "<A-h>", "<C-w>h", { silent = true, noremap = true })
map("n", "<A-j>", "<C-W>j", { silent = true, noremap = true })
map("n", "<A-k>", "<C-W>k", { silent = true, noremap = true })
map("n", "<A-l>", "<C-w>l", { silent = true, noremap = true })

-- Window navigation
map("n", "<A-s>", ":split<CR>", { silent = true, noremap = true })
map("n", "<A-v>", ":vsplit<CR>", { silent = true, noremap = true })
map("n", "<A-n>", ":<C-w><C-w>", { silent = true, noremap = true })
map("n", "<A-p>", ":<C-w><S-w>", { silent = true, noremap = true })

-- Esc to exit terminal mode
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
