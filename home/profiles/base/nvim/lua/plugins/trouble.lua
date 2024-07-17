local trouble_spec = use("folke/trouble.nvim", {
  event = "VeryLazy",
})

trouble_spec.config = function()
  local wk = require("which-key")

  require("trouble").setup({})

  wk.add({
    { "<Leader>x", group = "Diagnostics" },
    { "<Leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Toggle diagnostics" },
    { "<Leader>xq", "<cmd>TroubleToggle quickfix toggle<CR>", desc = "Toggle quickfixes" },
  })
end

return {
  trouble_spec,
}
