local map = vim.api.nvim_set_keymap
local autopairs = require("nvim-autopairs")

autopairs.setup({
  map_bs = false,
  map_cr = false,
})

_G.MUtils = {}

MUtils.CR = function()
  if vim.fn.pumvisible() ~= 0 then
    if vim.fn.complete_info({ "selected" }).selected ~= -1 then
      return autopairs.esc("<c-y>")
    else
      return autopairs.esc("<c-e>") .. autopairs.autopairs_cr()
    end
  else
    return autopairs.autopairs_cr()
  end
end
map("i", "<cr>", "v:lua.MUtils.CR()", { expr = true, noremap = true })

MUtils.BS = function()
  if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ "mode" }).mode == "eval" then
    return autopairs.esc("<c-e>") .. autopairs.autopairs_bs()
  else
    return autopairs.autopairs_bs()
  end
end
map("i", "<bs>", "v:lua.MUtils.BS()", { expr = true, noremap = true })
