local lualine = require("lualine")

local colors = {
  bg = "#121212",
  fg = "#bbc2cf",
  blue = "#008080",
  green = "#1E6327",
  orange = "#FF8800",
  violet = "#cc61a1",
  red = "#6D0011",
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand("%:p:h")
    local gitdir = vim.fn.finddir(".git", filepath .. ";")
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = "",
    section_separators = "",
    theme = {
      -- We are going to use lualine_c an lualine_x as the left
      -- and right sections. Both are highlighted by c theme.
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function right(component)
  table.insert(config.sections.lualine_x, component)
end

left({
  function()
    return "▊"
  end,
  color = { fg = colors.red },
  padding = { left = 0, right = 1 },
})

left({
  function()
    -- return ""
    return ""
  end,
  color = function()
    local mode_color = {
      n = colors.red,
      i = colors.orange,
      v = colors.blue,
      [""] = colors.blue,
      V = colors.blue,
      c = colors.violet,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [""] = colors.orange,
      ic = colors.orange,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.green,
      rm = colors.green,
      ["r?"] = colors.green,
      ["!"] = colors.red,
      t = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { right = 1 },
})

left({
  "filename",
  cond = conditions.buffer_not_empty,
  color = { fg = colors.violet, gui = "bold" },
})

left({ "location" })

left({
  function()
    local cur = vim.fn.line(".")
    local total = vim.fn.line("$")
    return math.floor(cur / total * 100) .. "%%"
  end,
  color = { fg = colors.fg, gui = "bold" },
})

left({
  "diagnostics",
  sources = { "nvim_diagnostic" },
  symbols = { error = " ", warn = " ", info = " ", hint = " " },
  diagnostics_color = {
    error = { fg = colors.red },
    warn = { fg = colors.orange },
    info = { fg = colors.green },
    hint = { fg = colors.blue },
  },
})

right({
  function()
    if vim.api.nvim_get_vvar("hlsearch") == 1 then
      local res = vim.fn.searchcount({ maxcount = 999, timeout = 500 })

      if res.total > 0 then
        return string.format("%d/%d", res.current, res.total)
      end
    end

    return ""
  end,
})

right({ "filetype" })

right({
  "filesize",
  cond = conditions.buffer_not_empty,
})

right({
  "o:encoding",
  fmt = string.upper,
  cond = conditions.hide_in_width,
  color = { fg = colors.green, gui = "bold" },
})

right({
  "fileformat",
  fmt = string.upper,
  icons_enabled = false,
  color = { fg = colors.green, gui = "bold" },
})

right({
  "branch",
  icon = "",
  color = { fg = colors.blue, gui = "bold" },
})

right({
  "diff",
  symbols = { added = "+", modified = "~", removed = "-" },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
})

right({
  function()
    return "▊"
  end,
  color = { fg = colors.red },
  padding = { left = 1 },
})

lualine.setup(config)
