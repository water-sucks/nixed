local telescope = require("telescope")
local map = vim.api.nvim_set_keymap

telescope.setup({
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    lsp_code_actions = {
      theme = "cursor",
    },
  },
})

map("n", "<Leader>ff", ":Telescope find_files<CR>", { noremap = true })
map("n", "<Leader>fg", ":Telescope live_grep<CR>", { noremap = true })
map("n", "<Leader>fb", ":Telescope buffers<CR>", { noremap = true })
map("n", "<Leader>fh", ":Telescope help_tags<CR>", { noremap = true })
map("n", "<Leader>fcom", ":Telescope git_commits<CR>", { noremap = true })
map("n", "<Leader>ca", ":Telescope lsp_code_actions<CR>", { noremap = true })
