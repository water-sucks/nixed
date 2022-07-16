local lsp = vim.lsp

lsp.handlers["textDocument/publishDiagnostics"] = lsp.with(lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = {
    prefix = "●",
    spacing = 1,
  },
  signs = true,
  underline = true,

  update_in_insert = false,
})

local signs = {
  Error = "",
  Warn = "",
  Info = "",
  Hint = "",
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

lsp.handlers["textDocument/hover"] = lsp.with(lsp.handlers.hover, {
  border = "single",
})

lsp.handlers["textDocument/signatureHelp"] = lsp.with(lsp.handlers.signature_help, {
  border = "single",
})
