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

-- LSP/LSPsaga keymappings defined in lua/config/lsp.lua for buffers

-- nvim-autopairs defined only if plugin can be setup due to autocmds

-- dial.nvim
map("n", "<C-a>", require("dial.map").inc_normal(), { noremap = true })
map("n", "<C-x>", require("dial.map").dec_normal(), { noremap = true })
map("v", "<C-a>", require("dial.map").inc_visual(), { noremap = true })
map("v", "<C-x>", require("dial.map").dec_visual(), { noremap = true })

-- diffview.nvim
map("n", "<Leader>dvo", ":DiffviewOpen<CR>", { silent = true, noremap = true })
map("n", "<Leader>dvc", ":DiffviewClose<CR>", { silent = true, noremap = true })

-- nvim-tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true, noremap = true })

-- telescope.nvim
map("n", "<Leader>ff", ":Telescope find_files<CR>", { silent = true, noremap = true })
map("n", "<Leader>fg", ":Telescope live_grep<CR>", { silent = true, noremap = true })
map("n", "<Leader>fb", ":Telescope buffers<CR>", { silent = true, noremap = true })
map("n", "<Leader>fh", ":Telescope help_tags<CR>", { silent = true, noremap = true })
map("n", "<Leader>fcom", ":Telescope git_commits<CR>", { silent = true, noremap = true })

-- vim-floaterm
map("n", "<Leader>tt", ":FloatermToggle<CR>", { silent = true, noremap = true })
map("n", "<Leader>tn", ":FloatermNext<CR>", { silent = true, noremap = true })
map("n", "<Leader>tp", ":FloatermPrev<CR>", { silent = true, noremap = true })
map("n", "<Leader>tN", ":FloatermNew<CR>", { silent = true, noremap = true })
map("n", "<Leader>tk", ":FloatermKill<CR>", { silent = true, noremap = true })

-- trouble.nvim
map("n", "<Leader>xx", ":TroubleToggle<CR>", { silent = true, noremap = true })
map("n", "<Leader>xq", ":TroubleToggle quickfix<CR>", { silent = true, noremap = true })

-- gitsigns.nvim
map("n", "]c", ":Gitsigns next_hunk<CR>", { silent = true, noremap = true })
map("n", "[c", ":Gitsigns prev_hunk<CR>", { silent = true, noremap = true })
map({ "n", "v" }, "<Leader>hs", ":Gitsigns stage_hunk<CR>", { silent = true, noremap = true })
map({ "n", "v" }, "<Leader>hu", ":Gitsigns undo_stage_hunk<CR>", { silent = true, noremap = true })
map({ "n", "v" }, "<Leader>hr", ":Gitsigns reset_hunk<CR>", { silent = true, noremap = true })
map("n", "<Leader>hR", ":Gitsigns reset_buffer<CR>", { silent = true, noremap = true })
map("n", "<Leader>hp", ":Gitsigns preview_hunk<CR>", { silent = true, noremap = true })
map("n", "<Leader>hS", ":Gitsigns stage_buffer<CR>", { silent = true, noremap = true })
map("n", "<Leader>hU", "Gitsigns reset_buffer_index<CR>", { silent = true, noremap = true })
map({ "o", "x" }, "ih", ":Gitsigns select_hunk<CR>", { silent = true, noremap = true })

-- zen-mode.nvim
map("n", "<Leader>zen", function()
  require("zen-mode").toggle({ window = { width = 0.80, height = 0.80 } })
end, { silent = true, noremap = true })
