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

local render_markdown_spec = use("MeanderingProgrammer/render-markdown.nvim", {
  dependencies = { use("nvim-treesitter/nvim-treesitter") },
  event = "VeryLazy",
  ft = "markdown",
})
render_markdown_spec.config = function()
  local wk = require("which-key")

  require("render-markdown").setup({
    enabled = true,
    render_modes = true,
    heading = {
      -- The heading concealer does not work with highlights.
      enabled = false,
    },
    bullet = {
      icons = { "", "", "", "", "", "" },
    },
    code = {
      -- For some reason, the language name is duplicated.
      -- Disable this behavior for now.
      language_name = false,
    },
    checkbox = {
      enabled = true,
      position = "inline",

      unchecked = { icon = "[ ]", highlight = "RenderMarkdownUnchecked" },
      checked = { icon = "[]", highlight = "RenderMarkdownChecked" },

      custom = {
        todo = { raw = "[-]", rendered = "[󰇘]", highlight = "RenderMarkdownTodo" },
        uncertain = {
          raw = "[?]",
          rendered = "[]",
          highlight = "RenderMarkdownUncertain",
          scope_highlight = "@markup.italic",
        },
        important = {
          raw = "[!]",
          rendered = "[]",
          highlight = "RenderMarkdownImportant",
          scope_highlight = "@markup.strong",
        },
        paused = {
          raw = "[=]",
          rendered = "[]",
          highlight = "RenderMarkdownPaused",
          scope_highlight = "@markup.italic",
        },
        canceled = {
          raw = "[_]",
          rendered = "[󰜺]",
          highlight = "RenderMarkdownCanceled",
          scope_highlight = "@markup.strikethrough",
        },
      },
    },
    sign = { enabled = false },
  })

  wk.add({
    { "<LocalLeader>c", "<Cmd>RenderMarkdown toggle<CR>", desc = "Toggle concealer", buffer = 0 },
    { "<LocalLeader>t", group = "Tasks", buffer = 0 },
    {
      "<LocalLeader>tc",
      function()
        mark_checkbox("_")
      end,
      desc = "Mark task canceled",
      buffer = 0,
    },
    {
      "<LocalLeader>td",
      function()
        mark_checkbox("x")
      end,
      desc = "Mark task done",
      buffer = 0,
    },
    {
      "<LocalLeader>th",
      function()
        mark_checkbox("?")
      end,
      desc = "Mark task on hold",
      buffer = 0,
    },
    {
      "<LocalLeader>ti",
      function()
        mark_checkbox("!")
      end,
      desc = "Mark task important",
      buffer = 0,
    },
    {
      "<LocalLeader>tp",
      function()
        mark_checkbox("-")
      end,
      desc = "Mark task pending",
      buffer = 0,
    },
    {
      "<LocalLeader>tu",
      function()
        mark_checkbox(" ")
      end,
      desc = "Mark task undone",
      buffer = 0,
    },
    {
      "<LocalLeader>tq",
      function()
        mark_checkbox("?")
      end,
      desc = "Mark task uncertain",
      buffer = 0,
    },
  })
end

return {
  render_markdown_spec,
}
