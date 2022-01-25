function settab(length, expand)
  vim.bo.tabstop = length
  vim.bo.shiftwidth = length
  vim.bo.expandtab = expand
end
