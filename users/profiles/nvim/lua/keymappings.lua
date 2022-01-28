local map = vim.api.nvim_set_keymap

map('t', '<Esc>', '<C-\\><C-n>', {noremap = true}) -- Terminal esc binding
map('n', '<C-n>', ':NvimTreeToggle<CR>', {silent = true, noremap = true}) -- nvim-tree
