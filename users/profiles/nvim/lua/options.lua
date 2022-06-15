vim.g.did_load_filetypes = 0
vim.g.do_filetype_lua = 1

vim.o.laststatus = 3
vim.o.termguicolors = true
vim.o.hidden = true
vim.o.updatetime = 100
vim.o.foldenable = false
vim.o.scrolloff = 999
vim.o.mouse = "a"
vim.o.tabstop = 4
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true

vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.signcolumn = "yes"

local disabled_built_ins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "tutor",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "matchparen",
  "fzf",
}
for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end
