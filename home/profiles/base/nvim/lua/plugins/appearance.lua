local bufferline = require("bufferline")
local devicons = require("nvim-web-devicons")
local dressing = require("dressing")
local gitsigns = require("gitsigns")
local ibl = require("ibl")
local lightbulb = require("nvim-lightbulb")
local render_markdown = require("render-markdown")
local scope = require("scope")
local twilight = require("twilight")
local ufo = require("ufo")
local wk = require("which-key")
local zen_mode = require("zen-mode")

dressing.setup({
  select = {
    get_config = function(opts)
      if opts.kind == "codeaction" then
        return {
          backend = "telescope",
          telescope = require("telescope.themes").get_cursor({}),
        }
      end
    end,
  },
})

bufferline.setup({
  options = {
    numbers = "ordinal",
  },
  highlights = require("darkrose.integrations.bufferline").generate(),
})

scope.setup()

local function mark_checkbox(mark)
  local line = vim.api.nvim_get_current_line()
  local checkbox_pattern = "%[.%]"
  if line:match(checkbox_pattern) then
    local new_line = line:gsub("%[.%]", "[" .. mark .. "]")
    vim.api.nvim_set_current_line(new_line)
  else
    vim.notify("No checkbox found on this line", vim.log.levels.WARN)
  end
end

render_markdown.setup({
  enabled = true,
  render_modes = true,
  heading = { enabled = false },
  bullet = { icons = { "", "", "", "", "", "" } },
  code = { language_name = false },
  html = { comment = { conceal = false } },
  checkbox = {
    enabled = true,
    position = "inline",
    unchecked = { icon = " [ ]", highlight = "RenderMarkdownUnchecked" },
    checked = { icon = " []", highlight = "RenderMarkdownChecked" },
    custom = {
      todo = { raw = "[-]", rendered = " [󰇘]", highlight = "RenderMarkdownTodo" },
      uncertain = {
        raw = "[?]",
        rendered = " []",
        highlight = "RenderMarkdownUncertain",
        scope_highlight = "@markup.italic",
      },
      important = {
        raw = "[!]",
        rendered = " []",
        highlight = "RenderMarkdownImportant",
        scope_highlight = "@markup.strong",
      },
      paused = {
        raw = "[=]",
        rendered = " []",
        highlight = "RenderMarkdownPaused",
        scope_highlight = "@markup.italic",
      },
      canceled = {
        raw = "[@]",
        rendered = " [󰜺]",
        highlight = "RenderMarkdownCanceled",
        scope_highlight = "@markup.strikethrough",
      },
    },
  },
  sign = { enabled = false },
  link = { footnote = { superscript = false, prefix = "{󰇈 ", suffix = "}" } },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function(opts)
    local bufnr = opts.buf
    wk.add({
      { "<LocalLeader>c", "<Cmd>RenderMarkdown toggle<CR>", desc = "Toggle concealer", buffer = bufnr },
      { "<LocalLeader>t", group = "Tasks", buffer = bufnr },
      {
        "<LocalLeader>tc",
        function()
          mark_checkbox("@")
        end,
        desc = "Mark task canceled",
        buffer = bufnr,
      },
      {
        "<LocalLeader>td",
        function()
          mark_checkbox("x")
        end,
        desc = "Mark task done",
        buffer = bufnr,
      },
      {
        "<LocalLeader>th",
        function()
          mark_checkbox("=")
        end,
        desc = "Mark task on hold",
        buffer = bufnr,
      },
      {
        "<LocalLeader>ti",
        function()
          mark_checkbox("!")
        end,
        desc = "Mark task important",
        buffer = bufnr,
      },
      {
        "<LocalLeader>tp",
        function()
          mark_checkbox("-")
        end,
        desc = "Mark task pending",
        buffer = bufnr,
      },
      {
        "<LocalLeader>tu",
        function()
          mark_checkbox(" ")
        end,
        desc = "Mark task undone",
        buffer = bufnr,
      },
      {
        "<LocalLeader>tq",
        function()
          mark_checkbox("?")
        end,
        desc = "Mark task uncertain",
        buffer = bufnr,
      },
    })
  end,
})

twilight.setup({ context = 20 })

zen_mode.setup({
  window = { width = 0.80, height = 0.80 },
})

wk.add({ { "<Leader>z", "<cmd>ZenMode<CR>", desc = "Toggle zen-mode" } })

ufo.setup({
  fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate)
    local new_virt_text = {}
    local suffix = (" 󰁂 %d "):format(endLnum - lnum)
    local suf_width = vim.fn.strdisplaywidth(suffix)
    local target_width = width - suf_width
    local cur_width = 0
    for _, chunk in ipairs(virtText) do
      local chunk_text = chunk[1]
      local chunk_width = vim.fn.strdisplaywidth(chunk_text)
      if target_width > cur_width + chunk_width then
        table.insert(new_virt_text, chunk)
      else
        chunk_text = truncate(chunk_text, target_width - cur_width)
        local hl_group = chunk[2]
        table.insert(new_virt_text, { chunk_text, hl_group })
        chunk_width = vim.fn.strdisplaywidth(chunk_text)
        if cur_width + chunk_width < target_width then
          suffix = suffix .. (" "):rep(target_width - cur_width - chunk_width)
        end
        break
      end
      cur_width = cur_width + chunk_width
    end
    table.insert(new_virt_text, { suffix, "MoreMsg" })
    return new_virt_text
  end,
  provider_selector = function(_, _, _)
    return { "treesitter", "indent" }
  end,
})

devicons.setup({})

ibl.setup({
  indent = { highlight = { "IblIndent1", "IblIndent2", "IblIndent3", "IblIndent4", "IblIndent5", "IblIndent6" } },
  scope = {
    show_start = true,
    show_end = true,
    highlight = { "IblScopeStart", "IblScopeEnd" },
  },
  exclude = {
    filetypes = { "terminal" },
    buftypes = { "nofile", "terminal" },
  },
})

lightbulb.setup({
  sign = { enabled = false },
  virtual_text = { enabled = true, text = " ", hl_mode = "combine" },
  autocmd = { enabled = true },
})

gitsigns.setup({})

wk.add({
  { "<Leader>h", group = "Gitsigns" },

  {
    "[c",
    function()
      gitsigns.nav_hunk("prev")
    end,
    desc = "Move to next hunk",
  },
  {
    "]c",
    function()
      gitsigns.nav_hunk("next")
    end,
    desc = "Move to next hunk",
  },

  { "<Leader>hs", gitsigns.stage_hunk, desc = "Stage hunk", mode = { "n", "v" } },
  { "<Leader>hu", gitsigns.stage_hunk, desc = "Unstage hunk", mode = { "n", "v" } },
  { "<Leader>hr", gitsigns.reset_hunk, desc = "Reset hunk", mode = { "n", "v" } },
  { "<Leader>hp", gitsigns.preview_hunk, desc = "Preview hunk" },
  { "<Leader>hS", gitsigns.stage_buffer, desc = "Stage buffer" },
  { "<Leader>hR", gitsigns.reset_buffer_index, desc = "Unstage buffer" },
  { "<Leader>hU", gitsigns.reset_buffer, desc = "Reset buffer" },
  { "<Leader>hB", gitsigns.blame, desc = "Show blame window" },
  { "<Leader>hb", gitsigns.toggle_current_line_blame, desc = "Toggle blame virtual text" },

  { "ih", "<C-U>Gitsigns select_hunk<CR>", desc = "Select hunk", mode = { "x", "o" } },
})
