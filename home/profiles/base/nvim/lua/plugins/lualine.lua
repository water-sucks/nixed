local c = require("darkrose.colors").get()

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
}

local mode_component = {
  function()
    return "󰇈"
  end,
  color = function()
    local mode_color = {
      n = c.red,
      i = c.orange,
      ic = c.orange,
      no = c.red,
      c = c.dark_pink,
      v = c.magenta,
      V = c.magenta,
      [""] = c.magenta,
      s = c.magenta,
      S = c.magenta,
      [""] = c.magenta,
      R = c.light_pink,
      Rv = c.light_pink,
      cv = c.dark_pink,
      r = c.red,
      rm = c.red,
      ["r?"] = c.red,
      ["!"] = c.red,
      t = c.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
}

local filename_component = {
  "filename",
  cond = conditions.buffer_not_empty,
  color = { fg = c.dark_pink, gui = "bold" },
}

local scroll_percentage_component = {
  function()
    local cur = vim.fn.line(".")
    local total = vim.fn.line("$")
    return math.floor(cur / total * 100) .. "%%"
  end,
  color = { fg = c.fg, gui = "bold" },
}

local diagnostics_component = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  symbols = { error = " ", warn = " ", info = " ", hint = " " },
  diagnostics_color = {
    error = { fg = c.error },
    warn = { fg = c.warning },
    info = { fg = c.info },
    hint = { fg = c.hint },
  },
}

local search_count_component = {
  function()
    local search = vim.fn.searchcount({ maxcount = 0 })
    local current_search = search.current
    local total = search.total
    if current_search > 0 and vim.v.hlsearch ~= 0 then
      return "[" .. current_search .. "/" .. total .. "]"
    else
      return ""
    end
  end,
}

local encoding_component = {
  "o:encoding",
  fmt = string.upper,
  cond = conditions.hide_in_width,
  color = { fg = c.red, gui = "bold" },
}

local eol_type_component = {
  "fileformat",
  fmt = string.upper,
  icons_enabled = false,
  color = { fg = c.red, gui = "bold" },
}

local branch_component = {
  "branch",
  icon = "",
  color = { fg = c.orange, gui = "bold" },
}

local diff_component = {
  "diff",
  symbols = { added = "+", modified = "~", removed = "-" },
  diff_color = {
    added = { fg = c.diff.add },
    modified = { fg = c.diff.change },
    removed = { fg = c.diff.delete },
  },
  cond = conditions.hide_in_width,
}

require("lualine").setup({
  options = {
    component_separators = "",
    section_separators = "",
    theme = {
      normal = { c = { fg = c.fg, bg = c.bg_float_bright } },
      inactive = { c = { fg = c.fg, bg = c.bg_float_bright } },
    },
  },
  -- these are to remove the defaults
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
  sections = {
    -- also to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {
      {
        function()
          return "▊"
        end,
        color = { fg = c.gray },
        padding = { left = 0, right = 1 },
      },
      mode_component,
      filename_component,
      { "location" },
      scroll_percentage_component,
      diagnostics_component,
    },
    lualine_x = {
      search_count_component,
      { "filetype" },
      { "filesize", cond = conditions.buffer_not_empty },
      encoding_component,
      eol_type_component,
      branch_component,
      diff_component,
      {
        function()
          return "▊"
        end,
        color = { fg = c.gray },
        padding = { left = 1 },
      },
    },
  },
})
