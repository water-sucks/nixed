local devicons_spec = use("kyazdani42/nvim-web-devicons", {
  event = "BufEnter",
  config = function()
    require("nvim-web-devicons").setup({})
  end,
})

local indent_blankline_spec = use("lukas-reineke/indent-blankline.nvim", {
  event = "VeryLazy",
})

indent_blankline_spec.config = function()
  vim.opt.list = true
  vim.opt.listchars:append("eol:↴")
  require("ibl").setup({
    indent = {
      highlight = {
        "IblIndent1",
        "IblIndent2",
        "IblIndent3",
        "IblIndent4",
        "IblIndent5",
        "IblIndent6",
      },
    },
    scope = {
      show_start = true,
      show_end = true,
      highlight = {
        "IblScopeStart",
        "IblScopeEnd",
      },
    },
    exclude = {
      filetypes = {
        "FTerm",
        "terminal",
        "norg",
      },
      buftypes = {
        "nofile",
        "terminal",
      },
    },
  })
end

local lightbulb_spec = use("kosayoda/nvim-lightbulb", {
  event = "VeryLazy",
  config = function()
    require("nvim-lightbulb").setup({
      sign = {
        enabled = false,
      },
      virtual_text = {
        enabled = true,
        text = " ",
        hl_mode = "combine",
      },
      autocmd = {
        enabled = true,
      },
    })
  end,
})

local emoji_spec = use("Allaman/emoji.nvim", {
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  event = "VeryLazy",
  opts = {
    plugin_path = vim.fn.stdpath("data") .. "/plugins",
  },
  config = function(_, opts)
    require("emoji").setup(opts)

    local ts = require("telescope").load_extension("emoji")
    vim.keymap.set("n", "<Leader>fe", ts.emoji, { desc = "Find emojis" })
  end,
})

return {
  devicons_spec,
  indent_blankline_spec,
  lightbulb_spec,
  emoji_spec,
}
