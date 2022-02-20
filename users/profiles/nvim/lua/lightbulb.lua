vim.cmd([[
augroup lightbulb
  au!
  au CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
augroup END
]])
