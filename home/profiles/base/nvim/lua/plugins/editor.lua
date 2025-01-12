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
  guess_indent_spec,
  unception_spec,
}
