local augroup = vim.api.nvim_create_augroup
local au = vim.api.nvim_create_autocmd

-- Remove terminal decorations
augroup("TerminalIndentBlanklineDisable", { clear = true })
au("TermOpen", {
  group = "TerminalIndentBlanklineDisable",
  pattern = "term://*",
  callback = function()
    vim.opt.number = false
    vim.opt.signcolumn = "no"
  end,
})
au("FileType", {
  group = "TerminalIndentBlanklineDisable",
  pattern = "floaterm",
  callback = function()
    vim.opt.number = false
    vim.opt.signcolumn = "no"
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
