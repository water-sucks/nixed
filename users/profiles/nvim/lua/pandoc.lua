local bmap = vim.api.nvim_buf_set_keymap

bmap(
  0,
  "",
  "<Leader>pv",
  ":! zathura %<.pdf 2>&1 >/dev/null &<CR><CR>",
  { silent = true, noremap = true }
) -- Open Zathura
bmap(
  0,
  "",
  "<Leader>pc",
  ":! pandoc -f markdown -o %<.pdf % 2>&1 >/dev/null<CR>",
  { noremap = true }
) -- Compile pandoc file to pdf
