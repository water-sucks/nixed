local map = vim.api.nvim_set_keymap
local bmap = vim.api.nvim_buf_set_keymap

map('t', '<Esc>', '<C-\\><C-n>', {noremap = true}) -- Terminal esc binding

map('n', '<C-n>', ':NvimTreeToggle<CR>', {silent = true, noremap = true}) -- nvim-tree

bmap(0, '', '<Leader>pv', ':! zathura %<.pdf 2>&1 >/dev/null &<CR><CR>', {noremap = true}) -- Open Zathura
bmap(0, '', '<Leader>pc', ':! pandoc -f markdown -o %<.pdf % 2>&1 >/dev/null<CR>', {noremap = true}) -- Compile pandoc file to pdf
