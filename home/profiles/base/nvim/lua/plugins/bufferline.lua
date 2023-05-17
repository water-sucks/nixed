local bufferline_spec = use("akinsho/bufferline.nvim", {
  event = "BufEnter",
  config = function()
    require("bufferline").setup({
      options = {
        numbers = "ordinal",
        offsets = { { filetype = "NvimTree", text = "File Explorer" } },
      },
      highlights = require("darkrose.integrations.bufferline").generate(),
    })
  end,
})

local scope_spec = use("tiagovla/scope.nvim", {
  event = "VeryLazy",
  dependencies = { use("akinsho/bufferline.nvim") },
  config = function()
    require("scope").setup()
  end,
})

return {
  bufferline_spec,
  scope_spec,
}
