local noice_spec = use("folke/noice.nvim", {
  dependencies = { use("MunifTanjim/nui.nvim") },
})

noice_spec.config = function()
  require("noice").setup({
    lsp = {
      progress = {
        enabled = false,
      },
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
      signature = {
        enabled = false, -- This is buggy, so I'm using lsp_signature.nvim for now.
      },
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
    routes = {
      {
        filter = {
          min_height = 15,
        },
        view = "split",
      },
    },
    popupmenu = {
      enabled = true,
      backend = "nui",
      kind_icons = {},
    },
    presets = {
      -- long_message_to_split = true,
    },
    views = {
      cmdline_popup = {
        border = {
          style = "single",
        },
        popupmenu = {
          border = {
            style = "single",
            padding = { 0, 0 },
          },
        },
        position = { row = -2, col = 0 },
      },
      hover = {
        border = {
          style = "single",
          padding = { 0, 0 },
        },
        position = { row = 2, col = 2 },
      },
      popup = {
        border = {
          style = "single",
        },
      },
    },
  })
end

return {
  noice_spec,
}
