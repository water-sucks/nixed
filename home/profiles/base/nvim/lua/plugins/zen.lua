local twilight_spec = use("folke/twilight.nvim", {
  event = "VeryLazy",
  config = function()
    require("twilight").setup({
      context = 20,
    })
  end,
})

local zen_spec = use("folke/zen-mode.nvim", {
  event = "VeryLazy",
  dependencies = { twilight_spec },
})
zen_spec.config = function()
  require("zen-mode").setup({
    window = {
      width = 0.80,
      height = 0.80,
    },
  })

  require("which-key").add({
    { "<Leader>z", "<cmd>ZenMode<CR>", desc = "Toggle zen-mode" },
  })
end

return {
  twilight_spec,
  zen_spec,
}
