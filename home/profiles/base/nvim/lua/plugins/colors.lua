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

          RenderMarkdownLink = { fg = c.dark_pink, underline = true },

          RenderMarkdownUnchecked = { fg = c.fg },
          RenderMarkdownChecked = { fg = c.red },
          RenderMarkdownTodo = { fg = c.dark_pink },
          RenderMarkdownUncertain = { fg = c.orange },
          RenderMarkdownImportant = { fg = c.light_red },
          RenderMarkdownPaused = { fg = c.gray },
          RenderMarkdownCanceled = { fg = c.fg_dark },
          RenderMarkdownCode = { bg = c.bg_float },
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

local binary_spec = use("jackplus-xyz/binary.nvim", {
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")

    require("binary").setup({
      style = "dark",
      colors = {
        fg = "#000000",
        bg = "#CCCCCC",
      },
    })

    local enabled_ibl_config = {
      enabled = true,
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
    }

    local function color_toggle()
      local is_binary = vim.g.colors_name == "binary"

      local ibl_exists, ibl = pcall(require, "ibl")
      local lualine_exists, lualine = pcall(require, "lualine")

      if is_binary then
        vim.cmd.colorscheme("darkrose")
        if ibl_exists then
          ibl.update(enabled_ibl_config)
        end
        if lualine_exists then
          lualine.hide({ unhide = true })
        end
      else
        if ibl_exists then
          ibl.update({
            enabled = false,
            indent = {
              highlight = "IblIndent",
            },
            scope = {
              show_start = false,
              show_end = false,
              highlight = "IblScope",
            },
          })
        end
        if lualine_exists then
          lualine.hide({ unhide = false })
        end
        vim.cmd.colorscheme("binary")
      end
    end

    wk.add({
      { "<Leader>w", color_toggle, desc = "Binary color toggle" },
    })
  end,
})

return {
  baleia_spec,
  binary_spec,
  colorscheme_spec,
  colorizer_spec,
  todo_comments_spec,
}
