vim.g.vimtex_view_method = "sioyek"
vim.g.vimtex_compiler_method = "latexrun"

-- Neovim compilation callback support with remote
vim.g.vimtex_compiler_progname = "nvr"
vim.g.vimtex_view_reverse_search_edit_cmd = "nvr --remote-silent %f -c %l"

-- Using Treesitter requires these settings
-- vim.g.vimtex_syntax_enabled = 0
-- vim.g.vimtex_syntax_conceal_disable = 1

vim.g.vimtex_compiler_silent = 1
vim.g.vimtex_complete_bib = {
  simple = 1,
  menu_fmt = "@year, @author_short, @title",
}
vim.g.vimtex_echo_verbose_input = 0
