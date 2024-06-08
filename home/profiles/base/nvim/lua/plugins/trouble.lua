local trouble_spec = use("folke/trouble.nvim", {
  event = "VeryLazy",
})

trouble_spec.config = function()
  require("trouble").setup({})

  require("which-key").register({
    x = {
      name = "Trouble",
      x = { "<cmd>Trouble diagnostics toggle<CR>", "Toggle diagnostics" },
      q = { "<cmd>TroubleToggle quickfix toggle<CR>", "Toggle quickfixes" },
    },
  }, {
    prefix = "<Leader>",
  })
end

return {
  trouble_spec,
}
