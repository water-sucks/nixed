local c = require("darkrose.colors").get()

local lualine_spec = use("nvim-lualine/lualine.nvim", {
  event = "BufEnter",
})

lualine_spec.config = function()
  local lualine = require("lualine")

  local bg = c.bg_float_bright

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
        normal = { c = { fg = c.fg, bg = bg } },
        inactive = { c = { fg = c.fg, bg = bg } },
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
    color = { fg = c.gray },
    padding = { left = 0, right = 1 },
  })

  left({
    function()
      return ""
    end,
    color = function()
      local mode_color = {
        n = c.red, -- Normal
        i = c.orange, -- Insert
        ic = c.orange, -- Completion insert
        no = c.red, -- Operator-pending
        c = c.dark_pink, -- Command-line
        v = c.magenta, -- Visual
        V = c.magenta, -- Line-wise visual
        [""] = c.magenta, --  Block-wise visual
        s = c.magenta, -- Select
        S = c.magenta, -- Line-wise visual
        [""] = c.magenta, -- Block-wise visual
        R = c.light_pink, -- Replace
        Rv = c.light_pink, -- Virtual replace
        cv = c.dark_pink, -- Ex
        r = c.red, -- Hit-enter
        rm = c.red, -- More prompt
        ["r?"] = c.red, -- :confirm
        ["!"] = c.red, -- Shell command
        t = c.red, -- Terminal
      }
      return { fg = mode_color[vim.fn.mode()] }
    end,
    padding = { right = 1 },
  })

  left({
    "filename",
    cond = conditions.buffer_not_empty,
    color = { fg = c.dark_pink, gui = "bold" },
  })

  left({ "location" })

  left({
    function()
      local cur = vim.fn.line(".")
      local total = vim.fn.line("$")
      return math.floor(cur / total * 100) .. "%%"
    end,
    color = { fg = c.fg, gui = "bold" },
  })

  left({
    "diagnostics",
    sources = { "nvim_diagnostic" },
    symbols = { error = " ", warn = " ", info = " ", hint = " " },
    diagnostics_color = {
      error = { fg = c.error },
      warn = { fg = c.warning },
      info = { fg = c.info },
      hint = { fg = c.hint },
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
    color = { fg = c.red, gui = "bold" },
  })

  right({
    "fileformat",
    fmt = string.upper,
    icons_enabled = false,
    color = { fg = c.red, gui = "bold" },
  })

  right({
    "branch",
    icon = "",
    color = { fg = c.orange, gui = "bold" },
  })

  right({
    "diff",
    symbols = { added = "+", modified = "~", removed = "-" },
    diff_color = {
      added = { fg = c.diff.add },
      modified = { fg = c.diff.change },
      removed = { fg = c.diff.delete },
    },
    cond = conditions.hide_in_width,
  })

  right({
    function()
      return "▊"
    end,
    color = { fg = c.gray },
    padding = { left = 1 },
  })

  lualine.setup(config)
end

return {
  lualine_spec,
}
