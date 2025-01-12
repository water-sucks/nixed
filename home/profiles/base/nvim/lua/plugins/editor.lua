local autosave_spec = use("Pocco81/auto-save.nvim", {
  event = "VeryLazy",
  config = function()
    local autosave = require("auto-save")

    autosave.setup({
      -- For some reason, this option is not working.
      -- I'll set it manually instead
      enabled = false,
      execution_message = {
        message = function()
          return "Autosaved at " .. vim.fn.strftime("%H:%M:%S")
        end,
      },
    })

    autosave.off()
  end,
})

local guess_indent_spec = use("NMAC427/guess-indent.nvim", {
  config = function()
    require("guess-indent").setup({
      filetype_exclude = {
        "NvimTree",
        "FTerm",
      },
      on_tab_options = {
        ["expandtab"] = false,
        ["shiftwidth"] = 4,
      },
    })
  end,
})

local unception_spec = use("samjwill/nvim-unception", {
  config = function()
    vim.g.unception_delete_replaced_buffer = true
    vim.api.nvim_create_autocmd("User", {
      pattern = "UnceptionEditRequestReceived",
      callback = function()
        vim.o.number = true
        vim.o.signcolumn = "yes"
      end,
    })
  end,
})

return {
  autosave_spec,
  guess_indent_spec,
  unception_spec,
}
