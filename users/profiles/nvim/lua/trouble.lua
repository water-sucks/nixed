local map = vim.api.nvim_set_keymap

require("trouble").setup({})

map("n", "<Leader>xx", ":TroubleToggle<CR>", { silent = true, noremap = true })
map("n", "<Leader>xq", ":TroubleToggle quickfix<CR>", { silent = true, noremap = true })
