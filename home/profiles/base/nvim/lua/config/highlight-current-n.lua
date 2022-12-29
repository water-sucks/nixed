local map = vim.keymap.set
local augroup = vim.api.nvim_create_augroup
local au = vim.api.nvim_create_autocmd

map("n", "n", "<Plug>(highlight-current-n-n)", { noremap = false })
map("n", "N", "<Plug>(highlight-current-n-N)", { noremap = false })

map("n", "*", "*N", { noremap = true })

augroup("ClearSearchHL", { clear = true })
au("CmdlineEnter", {
  group = "ClearSearchHL",
  pattern = "/,\\?",
  callback = function()
    vim.o.hlsearch = true
  end,
})
au("CmdlineLeave", {
  group = "ClearSearchHL",
  pattern = "/,\\?",
  callback = function()
    vim.o.hlsearch = false
    require("highlight_current_n")["/,?"]()
  end,
})
