local autopairs = require("nvim-autopairs")
local bullets = require("bullets")
local guess_indent = require("guess-indent")
local mini_move = require("mini.move")
local mini_surround = require("mini.surround")
local oil = require("oil")
local sort_plugin = require("sort")
local template = require("template")
local wk = require("which-key")

local map = vim.api.nvim_set_keymap

guess_indent.setup({
  on_tab_options = { ["expandtab"] = false, ["shiftwidth"] = 4 },
})

autopairs.setup({ map_bs = false, map_cr = false })

---@diagnostic disable: duplicate-set-field
_G.MUtils = {}

_G.MUtils.CR = function()
  if vim.fn.pumvisible() ~= 0 then
    if vim.fn.complete_info({ "selected" }).selected ~= -1 then
      return autopairs.esc("<c-y>")
    else
      return autopairs.esc("<c-e>") .. autopairs.autopairs_cr()
    end
  else
    return autopairs.autopairs_cr()
  end
end

_G.MUtils.BS = function()
  if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ "mode" }).mode == "eval" then
    return autopairs.esc("<c-e>") .. autopairs.autopairs_bs()
  else
    return autopairs.autopairs_bs()
  end
end
---@diagnostic enable

map("i", "<cr>", "v:lua.MUtils.CR()", { expr = true, noremap = true })
map("i", "<bs>", "v:lua.MUtils.BS()", { expr = true, noremap = true })

mini_move.setup({
  mappings = {
    left = "H",
    right = "L",
    down = "J",
    up = "K",
    line_left = "H",
    line_right = "L",
    line_down = "J",
    line_up = "K",
  },
  options = { reindent_linewise = true },
})

wk.add({
  {
    mode = { "n", "x", "o" },
    { "<Leader>s", "<Plug>(leap)", desc = "Leap" },
    { "<Leader>w", "<Plug>(leap-from-window)", desc = "Leap across windows" },
  },
})
wk.add({
  {
    mode = { "x", "o" },
    { "su", "<Plug>(leap-forward-till)", desc = "Leap forward until" },
    { "sU", "<Plug>(leap-backward-till)", desc = "Leap backward until" },
  },
})

sort_plugin.setup()
wk.add({
  { "<Leader>1", group = "Sort" },
  { "<Leader>1o", "<Cmd>Sort<CR>", desc = "Sort line" },
  { '<Leader>1"', 'vi"<Esc>:Sort<CR>', desc = 'Sort until "' },
  { "<Leader>1'", "vi'<Esc>:Sort<CR>", desc = "Sort until '" },
  { "<Leader>1(", "vi(<Esc>:Sort<CR>", desc = "Sort block inside ()" },
  { "<Leader>1[", "vi[<Esc>:Sort<CR>", desc = "Sort block inside []" },
  { "<Leader>1{", "vi{<Esc>:Sort<CR>", desc = "Sort block inside {}" },
  { "<Leader>1p", "vip<Esc>:Sort<CR>", desc = "Sort block inside paragraph" },
  { "<Leader>s", "<Esc><Cmd>Sort<CR>", desc = "Sort selection", mode = "v" },
})

mini_surround.setup()

local file_exists_and_is_empty = function(filepath)
  local file = io.open(filepath, "r")
  if file ~= nil then
    local content = file:read("*all")
    file:close()
    return content == ""
  else
    return false
  end
end

local notes_dir = vim.env.HOME .. "/Documents/Notes"
template.setup({ temp_dir = vim.fn.stdpath("config") .. "/templates" })
vim.api.nvim_create_autocmd({ "BufNewFile" }, {
  callback = function(args)
    vim.schedule(function()
      if args.event == "BufNewFile" or (args.event == "BufNew" and file_exists_and_is_empty(args.file)) then
        vim.api.nvim_cmd({ cmd = "Template", args = { "schedule" } }, {})
      end
    end)
  end,
  desc = "Load new schedule entries with template",
  pattern = notes_dir .. "/Schedule/????/??/??.md",
})

bullets.setup({
  enabled_file_types = { "markdown", "text", "gitcommit", "typst" },
  mapping_leader = "",
})

oil.setup({
  skip_confirm_for_simple_edits = true,
  watch_for_changes = true,
  view_options = { show_hidden = true },
  float = { max_width = 90, max_height = 30, border = "single" },
  use_default_keymaps = true,
  keymaps = { ["q"] = { "actions.close", mode = "n" } },
})

wk.add({
  { "<Leader>`", "<Cmd>Oil --float<CR>", desc = "Open file manager" },
  { "<Leader>L", "<Cmd>Oil<CR>", desc = "Open file manager (full)" },
})
