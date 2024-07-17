local fterm_spec = use("numToStr/FTerm.nvim", {
  event = "VeryLazy",
  config = function()
    local fterm = require("FTerm")
    local wk = require("which-key")

    fterm.setup({
      blend = 10,
      dimensions = {
        height = 0.6,
        width = 0.6,
      },
    })

    wk.add({
      {
        mode = { "n", "t" },
        { "<Leader>t", group = "Terminal" },
        { "<Leader>tt", fterm.toggle, desc = "Toggle terminal" },
        { "<Leader>to", fterm.open, desc = "Toggle terminal" },
        { "<Leader>tc", fterm.close, desc = "Toggle terminal" },
        { "<Leader>tk", fterm.exit, desc = "Toggle terminal" },
      },
    })
  end,
})

local unception_spec = use("samjwill/nvim-unception", {
  config = function()
    vim.g.unception_open_buffer_in_new_tab = true

    vim.api.nvim_create_autocmd("User", {
      pattern = "UnceptionEditRequestReceived",
      callback = function()
        require("FTerm").close()
      end,
    })
  end,
})

return {
  fterm_spec,
  unception_spec,
}
