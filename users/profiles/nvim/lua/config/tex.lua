vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_compiler_method = "latexrun"

-- Neovim compilation callback support with remote
vim.g.vimtex_compiler_progname = "nvr"
vim.g.vimtex_view_reverse_search_edit_cmd = "nvr --remote-silent %f -c %l"

-- Using Treesitter requires these settings
vim.g.vimtex_syntax_enabled = 0
vim.g.vimtex_syntax_conceal_disable = 1
