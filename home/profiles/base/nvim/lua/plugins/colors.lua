local colorscheme_spec = use("water-sucks/darkrose.nvim", {
  dev = true,
  lazy = false,
  config = function()
    require("darkrose").setup({
      overrides = function(c)
        return {
          RenderMarkdownH1 = { fg = c.markup.h1 },
          RenderMarkdownH2 = { fg = c.markup.h2 },
          RenderMarkdownH3 = { fg = c.markup.h3 },
          RenderMarkdownH4 = { fg = c.markup.h4 },
          RenderMarkdownH5 = { fg = c.markup.h5 },
          RenderMarkdownH6 = { fg = c.markup.h6 },
          RenderMarkdownH1Bg = { link = "Normal" },
          RenderMarkdownH2Bg = { link = "Normal" },
          RenderMarkdownH3Bg = { link = "Normal" },
          RenderMarkdownH4Bg = { link = "Normal" },
          RenderMarkdownH5Bg = { link = "Normal" },
          RenderMarkdownH6Bg = { link = "Normal" },

          RenderMarkdownBullet = { fg = c.pink },

          RenderMarkdownUnchecked = { fg = c.fg },
          RenderMarkdownChecked = { fg = c.red },
          RenderMarkdownTodo = { fg = c.dark_pink },
          RenderMarkdownUncertain = { fg = c.orange },
          RenderMarkdownImportant = { fg = c.light_red },
          RenderMarkdownPaused = { fg = c.gray },
          RenderMarkdownCanceled = { fg = c.fg_dark },
        }
      end,
    })
    vim.cmd.colorscheme("darkrose")
  end,
})

local colorizer_spec = use("NvChad/nvim-colorizer.lua", {
  event = "VeryLazy",
  config = function()
    require("colorizer").setup({
      user_default_options = {
        RGB = true,
        RRGGBB = true,
        names = false,
        RRGGBBAA = true,
        AARRGGBB = true,
        rgb_fn = true,
        hsl_fn = true,
        mode = "background",
        tailwind = true,
      },
    })
  end,
})

local highlight_current_n_spec = use("rktjmp/highlight-current-n.nvim", {
  event = "VeryLazy",
  config = function()
    local map = vim.keymap.set
    local augroup = vim.api.nvim_create_augroup
    local au = vim.api.nvim_create_autocmd

    map("n", "n", "<Plug>(highlight-current-n-n)", { silent = true, noremap = false })
    map("n", "N", "<Plug>(highlight-current-n-N)", { silent = true, noremap = false })

    map("n", "*", "*N", { silent = true, noremap = true })

    augroup("ClearSearchHL", { clear = true })
    au("CmdlineEnter", {
      group = "ClearSearchHL",
      pattern = "/,\\?",
      callback = function()
        vim.o.hlsearch = true
      end,
    })
    au("CmdlineLeave", {
      group = "ClearSearchHL",
      pattern = "/,\\?",
      callback = function()
        vim.o.hlsearch = false
        require("highlight_current_n")["/,?"]()
      end,
    })
  end,
})

local todo_comments_spec = use("folke/todo-comments.nvim", {
  event = "VeryLazy",
  config = function()
    require("todo-comments").setup({
      keywords = {
        FIX = { icon = "" },
        TODO = { icon = "󰇘" },
        NOTE = { icon = "" },
      },
    })
  end,
})

local baleia_spec = use("m00qek/baleia.nvim", {
  event = "VeryLazy",
  config = function()
    vim.g.baleia = require("baleia").setup({})
  end,
})

return {
  baleia_spec,
  colorscheme_spec,
  colorizer_spec,
  highlight_current_n_spec,
  todo_comments_spec,
}
