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

  wk.add({
    {
      buffer = bufnr,
      { "gd", vim.lsp.buf.declaration, desc = "Go to declaration" },
      { "gh", vim.lsp.buf.hover, desc = "Hover docs" },
      { "gi", vim.lsp.buf.implementation, desc = "Go to implementation" },
      { "go", vim.lsp.buf.open_float, desc = "Show code actions" },
      { "gr", vim.lsp.buf.rename, desc = "Rename" },
      { "gx", vim.lsp.buf.code_action, desc = "Show code actions" },
    },
  })
end

return on_attach
