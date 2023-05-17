local trouble_spec = use("folke/trouble.nvim", {
  event = "VeryLazy",
})

trouble_spec.config = function()
  require("trouble").setup({})

  require("which-key").register({
    x = {
      name = "Trouble",
      x = { "<cmd>TroubleToggle<CR>", "Toggle diagnostics" },
      q = { "<cmd>TroubleToggle quickfix<CR>", "Toggle quickfixes" },
    },
  }, {
    prefix = "<Leader>",
  })
end

return {
  trouble_spec,
}
