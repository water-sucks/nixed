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

-- This is a function;
-- I guess?
local on_attach = function(client, bufnr)
  for _, v in pairs(disable_format_cap) do
    if v == client.name then
      client.server_capabilities.document_formatting = false
      break
    end
  end

  lsp_format.on_attach(client)

  local keymaps = {
    g = {
      name = "LSP",
      D = { vim.lsp.buf.declaration, "Go to declaration" },
      d = { vim.lsp.buf.definition, "Go to definition" },
      i = { vim.lsp.buf.implementation, "Go to implementation" },
      h = { vim.lsp.buf.hover, "Hover docs" },

      r = { vim.lsp.buf.rename, "Rename" },

      o = { vim.diagnostic.open_float, "Show diagnostics for line" },
      j = { vim.diagnostic.goto_next, "Jump to next diagnostic" },
      k = { vim.diagnostic.goto_prev, "Jump to last diagnostic " },

      x = { ":CodeActionMenu<CR>", "Show code actions" },
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
