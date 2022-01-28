require('searchbox').setup({
  popup = {
    relative = 'win',
    position = {
      row = '5%',
      col = '95%',
    },
    size = 40,
    border = {
      style = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
      highlight = 'FloatBorder',
      text = {
        top = ' Search ',
        top_align = 'left',
      },
    },
    win_options = {
      winhighlight = 'Normal:Normal',
    },
  },
})

vim.api.nvim_set_keymap(
  'n',
  '<leader>s',
  ':SearchBoxIncSearch visual_mode=true<CR>',
  {noremap = true}
)

vim.api.nvim_set_keymap(
  'n',
  '<leader>r',
  ':SearchBoxReplace visual_mode=true<CR>',
  {noremap = true}
)
