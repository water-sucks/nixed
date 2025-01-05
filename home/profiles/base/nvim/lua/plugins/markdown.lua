local bullets_vim_spec = use("bullets-vim/bullets.vim", {
  ft = { "markdown", "gitcommit", "text" },
  event = "VeryLazy",
})
bullets_vim_spec.config = function()
  vim.g.bullets_set_mappings = 0
  vim.g.bullets_custom_mappings = {
    { "imap", "<CR>", "<Plug>(bullets-newline)" },
    { "inoremap", "<C-CR>", "<cr>" },

    { "nmap", "o", "<Plug>(bullets-newline)" },

    { "vmap", "<LocalLeader>N", "<Plug>(bullets-renumber)" },
    { "nmap", "<LocalLeader>N", "<Plug>(bullets-renumber)" },

    { "imap", "<C-t>", "<Plug>(bullets-demote)" },
    { "nmap", ">>", "<Plug>(bullets-demote)" },
    { "vmap", ">", "<Plug>(bullets-demote)" },
    { "imap", "<C-d>", "<Plug>(bullets-promote)" },
    { "nmap", "<<", "<Plug>(bullets-promote)" },
    { "vmap", "<", "<Plug>(bullets-promote)" },
  }
  vim.g.bullets_checkbox_markers = " -x"
end

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
          raw = "[@]",
          rendered = "[󰜺]",
          highlight = "RenderMarkdownCanceled",
          scope_highlight = "@markup.strikethrough",
        },
      },
    },
    sign = { enabled = false },
  })

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function(opts)
      local bufnr = opts.buf
      wk.add({
        {
          "<LocalLeader>c",
          "<Cmd>RenderMarkdown toggle<CR>",
          desc = "Toggle concealer",
          buffer = bufnr,
        },
        { "<LocalLeader>t", group = "Tasks" },
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
end

return {
  bullets_vim_spec,
  render_markdown_spec,
}
