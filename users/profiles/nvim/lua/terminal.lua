local map = vim.api.nvim_set_keymap
local augroup = vim.api.nvim_create_augroup
local au = vim.api.nvim_create_autocmd

-- Floaterm bindings
map("n", "<Leader>tt", ":FloatermToggle<CR>", { silent = true, noremap = true })
map("n", "<Leader>tn", ":FloatermNext<CR>", { silent = true, noremap = true })
map("n", "<Leader>tp", ":FloatermPrev<CR>", { silent = true, noremap = true })
map("n", "<Leader>tN", ":FloatermNew<CR>", { silent = true, noremap = true })
map("n", "<Leader>tk", ":FloatermKill<CR>", { silent = true, noremap = true })

-- Remove terminal decorations
augroup("TerminalIndentBlanklineDisable", { clear = true })
au("TermOpen", {
  group = "TerminalIndentBlanklineDisable",
  pattern = "term://*",
  callback = function()
    vim.o.filetype = "terminal"
    vim.opt.number = false
    vim.opt.signcolumn = "no"
    vim.cmd("startinsert")
  end,
})
au("TermClose", {
  group = "TerminalIndentBlanklineDisable",
  pattern = "term://*",
  callback = function()
    vim.opt.number = true
    vim.opt.signcolumn = "yes"
  end,
})
au("FileType", {
  group = "TerminalIndentBlanklineDisable",
  pattern = "floaterm",
  callback = function()
    vim.opt.number = false
    vim.opt.signcolumn = "no"
    vim.cmd("startinsert")
  end,
})
