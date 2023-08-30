local wk = require("which-key")

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end

  local keymaps = {
    g = {
      name = "LSP",
      D = { vim.lsp.buf.declaration, "Go to declaration" },
      -- d = { vim.lsp.buf.definition, "Go to definition" }, -- This is declared in Treesitter instead.
      i = { vim.lsp.buf.implementation, "Go to implementation" },
      h = { vim.lsp.buf.hover, "Hover docs" },

      r = { vim.lsp.buf.rename, "Rename" },
      x = { vim.lsp.buf.code_action, "Show code actions" },

      o = { vim.diagnostic.open_float, "Show diagnostics for line" },
      j = { vim.diagnostic.goto_next, "Jump to next diagnostic" },
      k = { vim.diagnostic.goto_prev, "Jump to last diagnostic " },
    },
  }

  wk.register(keymaps, {
    buffer = bufnr,
  })
end

return on_attach
