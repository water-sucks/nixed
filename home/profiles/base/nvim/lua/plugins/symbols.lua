local use = require("utils").use

local cursor_spec = use("gen740/SmoothCursor.nvim", {
  event = "CursorHold",
  config = function()
    require("smoothcursor").setup({
      autostart = true,
      cursor = "",
      texthl = "SmoothCursor",
      type = "default",
      fancy = {
        enable = false,
      },
      disabled_filetypes = {
        "FTerm",
        "terminal",
        "",
      },
    })
  end,
})

local devicons_spec = use("kyazdani42/nvim-web-devicons", {
  event = "BufEnter",
  config = function()
    require("nvim-web-devicons").setup({})
  end,
})

local circles_spec = use("projekt0n/circles.nvim", {
  event = "BufEnter",
  dependencies = { devicons_spec },
  config = function()
    require("circles").setup({})
  end,
})

local indent_blankline_spec = use("lukas-reineke/indent-blankline.nvim", {
  event = "BufRead",
})
indent_blankline_spec.config = function()
  vim.opt.list = true
  vim.opt.listchars:append("eol:↴")
  require("indent_blankline").setup({
    show_end_of_line = true,
    filetype_exclude = {
      "FTerm",
      "terminal",
    },
    buftype_exclude = {
      "nofile",
      "terminal",
    },
  })
end

local lightbulb_spec = use("kosayoda/nvim-lightbulb", {
  event = "BufRead",
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

return {
  cursor_spec,
  devicons_spec,
  circles_spec,
  indent_blankline_spec,
  lightbulb_spec,
}
