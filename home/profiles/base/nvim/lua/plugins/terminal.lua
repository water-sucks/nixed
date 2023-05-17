local fterm_spec = use("numToStr/FTerm.nvim", {
  event = "VeryLazy",
  config = function()
    require("FTerm").setup({
      blend = 10,
      dimensions = {
        height = 0.6,
        width = 0.6,
      },
    })

    require("which-key").register({
      t = {
        name = "Terminal",
        t = {
          function()
            require("FTerm").toggle()
          end,
          "Toggle terminal",
        },
        o = {
          function()
            require("FTerm").open()
          end,
          "Open terminal",
        },
        c = {
          function()
            require("FTerm").close()
          end,
          "Open terminal",
        },
        k = {
          function()
            require("FTerm").exit()
          end,
          "Kill terminal",
        },
      },
    }, {
      mode = { "n", "t" },
      prefix = "<Leader>",
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
