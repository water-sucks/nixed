local wk = require("which-key")

local on_attach = function(_, bufnr)
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
