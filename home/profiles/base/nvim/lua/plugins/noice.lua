local noice_spec = use("folke/noice.nvim", {
  dependencies = { use("MunifTanjim/nui.nvim") },
})

noice_spec.config = function()
  local wk = require("which-key")
  local noice = require("noice")

  noice.setup({
    lsp = {
      -- Using fidget.nvim
      progress = { enabled = false },
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
      hover = { enabled = true },
      signature = { enabled = false },
    },
    cmdline = {
      format = {
        cmdline = { pattern = "^:", icon = "", lang = "vim" },
        search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
        search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
        filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
        lua = { pattern = "^:%s*lua%s+", icon = "", lang = "lua" },
        help = { pattern = "^:%s*he?l?p?%s+", icon = "󰮥" },
        input = {},
      },
    },
    messages = {
      view = "notify",
      view_error = "messages",
      view_warn = "notify",
      view_history = "messages",
      view_search = "virtualtext",
    },
    popupmenu = {
      enabled = true,
      backend = "nui",
      kind_icons = {},
    },
    presets = {
      inc_rename = true,
      command_palette = true,
      long_message_to_split = true,
      lsp_doc_border = true,
    },
    views = {
      cmdline_popup = {
        border = {
          style = "single",
        },
        position = { row = -2, col = 0 },
      },
    },
  })

  wk.add({
    {
      "<Leader>m",
      function()
        noice.cmd("telescope")
      end,
      desc = "Show messages",
      silent = true,
    },
  })

  vim.keymap.set("i", "<C-h>", function()
    require("noice.lsp").signature()
  end, {})
  vim.keymap.set({ "n", "i", "s" }, "<c-f>", function()
    if not require("noice.lsp").scroll(4) then
      return "<c-f>"
    end
  end, { silent = true, expr = true })

  vim.keymap.set({ "n", "i", "s" }, "<c-b>", function()
    if not require("noice.lsp").scroll(-4) then
      return "<c-b>"
    end
  end, { silent = true, expr = true })
end

return {
  noice_spec,
}
