vim.cmd([[
  fun! Settab(length, ...)
    let &tabstop=a:length
    let &shiftwidth=a:length
    let &expandtab = a:0 >= 1 ? a:1 : 0
  endfun

  command -nargs=* Stab call Settab(<f-args>)
]])
