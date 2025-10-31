local augroup = vim.api.nvim_create_augroup
local au = vim.api.nvim_create_autocmd

-- Remove terminal decorations
augroup("TerminalSignsToggle", { clear = true })
au({ "TermOpen", "TermEnter", "BufEnter" }, {
  group = "TerminalSignsToggle",
  pattern = { "term://*" },
  callback = function()
    vim.o.number = false
    vim.o.signcolumn = "no"

    vim.cmd("startinsert")
  end,
})
au("TermClose", {
  group = "TerminalSignsToggle",
  pattern = { "term://**" },
  callback = function()
    vim.o.number = true
    vim.o.signcolumn = "yes"
  end,
})

vim.api.nvim_create_augroup("MarkdownCommands", { clear = true })
au("FileType", {
  group = "MarkdownCommands",
  pattern = "markdown",
  callback = function()
    vim.opt.colorcolumn = "80"
  end,
})

vim.api.nvim_create_augroup("MailCommands", { clear = true })
au("FileType", {
  group = "MailCommands",
  pattern = "mail",
  callback = function()
    vim.opt.colorcolumn = "72"
  end,
})

vim.api.nvim_create_augroup("GitCommit", { clear = true })
au("FileType", {
  group = "GitCommit",
  pattern = "gitcommit",
  callback = function()
    vim.opt.colorcolumn = "72"
  end,
})

vim.api.nvim_create_augroup("AutoDeleteGitBuffer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  group = "AutoDeleteGitBuffer",
  pattern = { "COMMIT_EDITMSG", "git-rebase-todo" },
  callback = function(args)
    if not vim.g.unception_block_while_host_edits then
      vim.api.nvim_buf_delete(args.buf, { force = true })
    end
  end,
})
