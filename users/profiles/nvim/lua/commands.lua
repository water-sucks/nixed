vim.api.nvim_create_user_command("Stab", function(opts)
  local length = tonumber(opts.fargs[1])
  if length == nil then
    print("Error: length must be a number")
    return
  elseif length <= 0 then
    print("Error: length must be greater than 0")
    return
  end
  vim.bo.tabstop = length
  vim.bo.shiftwidth = length

  local expandtab = tonumber(opts.fargs[2]) or vim.bo.expandtab
  if expandtab == nil or (expandtab ~= 0 and expandtab ~= 1) then
    print("Error: expandtab must be 0 or 1")
    return
  end
  vim.bo.expandtab = expandtab == 1
end, { nargs = "+" })
