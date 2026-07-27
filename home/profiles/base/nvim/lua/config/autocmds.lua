local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Remove terminal decorations
augroup("TerminalSignsToggle", { clear = true })
autocmd({ "TermOpen", "TermEnter", "BufEnter" }, {
  group = "TerminalSignsToggle",
  pattern = { "term://*" },
  callback = function()
    vim.opt.number = false
    vim.opt.signcolumn = "no"

    vim.cmd("startinsert")
  end,
})
autocmd("TermClose", {
  group = "TerminalSignsToggle",
  pattern = { "term://**" },
  callback = function()
    vim.opt.number = true
    vim.opt.signcolumn = "yes"
  end,
})

vim.api.nvim_create_augroup("MarkdownCommands", { clear = true })
autocmd("FileType", {
  group = "MarkdownCommands",
  pattern = "markdown",
  callback = function()
    vim.opt.colorcolumn = "80"
  end,
})

vim.api.nvim_create_augroup("MailCommands", { clear = true })
autocmd("FileType", {
  group = "MailCommands",
  pattern = "mail",
  callback = function()
    vim.opt.colorcolumn = "72"
  end,
})

vim.api.nvim_create_augroup("GitCommit", { clear = true })
autocmd("FileType", {
  group = "GitCommit",
  pattern = "gitcommit",
  callback = function()
    vim.opt.colorcolumn = "72"
  end,
})
