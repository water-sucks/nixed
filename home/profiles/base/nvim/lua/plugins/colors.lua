local darkrose = require("darkrose")
local colorizer = require("colorizer")
local todo = require("todo-comments")
local baleia = require("baleia")
local binary = require("binary")
local wk = require("which-key")

darkrose.setup({
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

colorizer.setup({
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

todo.setup({
  keywords = {
    FIX = { icon = "" },
    TODO = { icon = "󰇘" },
    NOTE = { icon = "" },
  },
})

vim.g.baleia = baleia.setup({})

binary.setup({
  style = "dark",
  colors = {
    fg = "#000000",
    bg = "#CCCCCC",
  },
})

local color_toggle = function()
  local ibl_exists, ibl = pcall(require, "ibl")
  local lualine_exists, lualine = pcall(require, "lualine")

  local is_binary = vim.g.colors_name == "binary"
  if is_binary then
    vim.cmd.colorscheme("darkrose")
    if ibl_exists then
      ibl.update({
        enabled = true,
        indent = { highlight = { "IblIndent1", "IblIndent2", "IblIndent3", "IblIndent4", "IblIndent5", "IblIndent6" } },
        scope = { show_start = true, show_end = true, highlight = { "IblScopeStart", "IblScopeEnd" } },
      })
    end
    if lualine_exists then
      lualine.hide({ unhide = true, place = { "statusline" } })
    end
  else
    if ibl_exists then
      ibl.update({
        enabled = false,
        indent = { highlight = "IblIndent" },
        scope = { show_start = false, show_end = false, highlight = "IblScope" },
      })
    end
    if lualine_exists then
      lualine.hide({ unhide = false, place = { "statusline" } })
    end
    vim.cmd.colorscheme("binary")
  end
end

wk.add({
  { "<Leader>w", color_toggle, desc = "Binary color toggle" },
})
