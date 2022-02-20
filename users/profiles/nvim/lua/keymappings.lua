-- Non-plugin-related keyboard bindings

local map = vim.api.nvim_set_keymap

-- Go to normal mode from terminal mode with Esc
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
