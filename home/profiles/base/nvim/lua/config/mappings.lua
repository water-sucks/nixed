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
map("n", "<A-s>", "<cmd>split<CR>", { silent = true, noremap = true })
map("n", "<A-v>", "<cmd>vsplit<CR>", { silent = true, noremap = true })
map("n", "<A-S>", "<cmd>split | terminal<CR>", { silent = true, noremap = true })
map("n", "<A-V>", "<cmd>vsplit | terminal<CR>", { silent = true, noremap = true })

-- Esc to exit terminal mode
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

-- Zz writes and removes a buffer
map("n", "zx", "<cmd>w|bd<CR>", { noremap = true })
map("n", "Zx", "<cmd>w|bd!<CR>", { noremap = true })

map("n", "Q", "<cmd>q<CR>", { noremap = true })
map("n", "Q!", "<cmd>q!<CR>", { noremap = true })
