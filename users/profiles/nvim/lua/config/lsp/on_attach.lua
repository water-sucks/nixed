local lsp_format = require("lsp-format")
local wk = require("which-key")

local disable_format_cap = {
  "dartls",
  "sumneko_lua",
  "rust_analyzer",
  "rnix",
  "gopls",
  "elixirls",
}

local on_attach = function(client, bufnr)
  for _, v in pairs(disable_format_cap) do
    if v == client.name then
      client.server_capabilities.document_formatting = false
      break
    end
  end

  lsp_format.on_attach(client)

  require("lsp_signature").on_attach({
    bind = true,
    toggle_key = "K",
  }, bufnr)

  local keymaps = {
    g = {
      name = "LSP",
      D = { vim.lsp.buf.declaration, "Go to declaration" },
      d = { vim.lsp.buf.definition, "Go to definition" },
      i = { vim.lsp.buf.implementation, "Go to implementation" },

      r = { ":Lspsaga rename<CR>", "Rename" },
      x = { ":Lspsaga code_action<CR>", "Show code actions" },

      o = { ":Lspsaga show_line_diagnostics<CR>", "Show diagnostics for line" },
      j = { ":Lspsaga diagnostic_jump_next<CR>", "Jump to next diagnostic" },
      k = { ":Lspsaga diagnostic_jump_prev<CR>", "Jump to last diagnostic " },

      h = { ":Lspsaga lsp_finder<CR>", "LSP finder", bufnr = nil },
    },

    ["<C-u>"] = {
      function()
        require("lspsaga.action").smart_scroll_with_saga(-1, "<C-u>")
      end,
      "Smart scroll up",
      bufnr = nil,
    },
    ["<C-d>"] = {
      function()
        require("lspsaga.action").smart_scroll_with_saga(1, "<C-d>")
      end,
      "Smart scroll down",
      bufnr = nil,
    },
  }

  wk.register(keymaps, {
    mode = "n",
    buffer = bufnr,
    silent = true,
    noremap = true,
  })

  wk.register({
    g = {
      name = "LSP",
      x = { ":<c-u>Lspsaga range_code_action<CR>", "Show code actions over range" },
    },
  }, {
    mode = "x",
    silent = true,
    noremap = true,
  })
end

return on_attach
