local colors = {
  red = "#6D0011",
  grey = "#a0a1a7",
  black = "#383a42",
  white = "#f3f3f3",
  orange = "#B35101",
  purple = "#7A0045",
}

local theme = {
  normal = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.white },
    z = { fg = colors.white, bg = colors.black },
  },
  insert = { a = { fg = colors.white, bg = colors.red } },
  visual = { a = { fg = colors.white, bg = colors.purple } },
  replace = { a = { fg = colors.white, bg = colors.orange } },
}

local empty = require("lualine.component"):extend()
function empty:draw(default_highlight)
  self.status = ""
  self.applied_separator = ""
  self:apply_highlights(default_highlight)
  self:apply_section_separators()
  return self.status
end

-- Put proper separators and gaps between components in sections
local function process_sections(sections)
  for name, section in pairs(sections) do
    local left = name:sub(9, 10) < "x"
    for pos = 1, name ~= "lualine_z" and #section or #section - 1 do
      table.insert(section, pos * 2, { empty, color = { fg = colors.white, bg = colors.white } })
    end
    for id, comp in ipairs(section) do
      if type(comp) ~= "table" then
        comp = { comp }
        section[id] = comp
      end
      comp.separator = left and { right = "" } or { left = "" }
    end
  end
  return sections
end

local function search_result()
  if vim.v.hlsearch == 0 then
    return ""
  end
  local last_search = vim.fn.getreg("/")
  if not last_search or last_search == "" then
    return ""
  end
  local searchcount = vim.fn.searchcount({ maxcount = 9999 })
  return last_search .. "(" .. searchcount.current .. "/" .. searchcount.total .. ")"
end

local function modified()
  if vim.bo.modified then
    return "+"
  elseif vim.bo.modifiable == false or vim.bo.readonly == true then
    return "-"
  end
  return ""
end

require("lualine").setup({
  options = {
    theme = theme,
    component_separators = "",
    section_separators = { left = "", right = "" },
  },
  sections = process_sections({
    lualine_a = { "mode" },
    lualine_b = {
      "branch",
      {
        "diff",
        diff_color = {
          added = { bg = colors.grey, fg = "#196C2E" },
          removed = { bg = colors.grey, fg = "#B62324" },
          modified = { bg = colors.grey, fg = "#9E6A03" },
        },
      },
      {
        "diagnostics",
        source = { "nvim" },
        sections = { "error" },
        diagnostics_color = { error = { bg = colors.red, fg = colors.white } },
      },
      {
        "diagnostics",
        source = { "nvim" },
        sections = { "warn" },
        diagnostics_color = { warn = { bg = colors.orange, fg = colors.white } },
      },
      { "filename", file_status = false, path = 1 },
      { modified, color = { bg = colors.red } },
      {
        "%w",
        cond = function()
          return vim.wo.previewwindow
        end,
      },
      {
        "%r",
        cond = function()
          return vim.bo.readonly
        end,
      },
      {
        "%q",
        cond = function()
          return vim.bo.buftype == "quickfix"
        end,
      },
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { search_result, "filetype" },
    lualine_z = { "%l:%c", "%p%%/%L" },
  }),
  inactive_sections = {
    lualine_c = { "%f %y %m" },
    lualine_x = {},
  },
})
