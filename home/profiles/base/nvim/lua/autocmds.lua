local augroup = vim.api.nvim_create_augroup
local au = vim.api.nvim_create_autocmd

-- Expose cmdline on bottom for command mode only
augroup("CmdHeightStatusLine", { clear = true })
au("CmdlineEnter", {
  group = "CmdHeightStatusLine",
  pattern = "*",
  callback = function()
    vim.opt.cmdheight = 1
  end,
})
au("CmdlineLeave", {
  group = "CmdHeightStatusLine",
  pattern = "*",
  callback = function()
    vim.opt.cmdheight = 0
  end,
})

-- Remove terminal decorations
augroup("TerminalSignsToggle", { clear = true })
au("TermOpen", {
  group = "TerminalSignsToggle",
  pattern = "term://*",
  callback = function()
    vim.opt.number = false
    vim.opt.signcolumn = "no"
  end,
})
au("FileType", {
  group = "TerminalSignsToggle",
  pattern = "FTerm",
  callback = function()
    vim.opt.number = false
    vim.opt.signcolumn = "no"
  end,
})
au("TermClose", {
  group = "TerminalSignsToggle",
  pattern = "term://*",
  callback = function()
    vim.opt.number = true
    vim.opt.signcolumn = "yes"
  end,
})
