local extension_path = vim.fn.stdpath("data") .. "/vscode-lldb/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.so"

require("rust-tools").setup({
  server = {
    on_attach = require("config.lsp.on_attach"),
  },
  dap = {
    adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
  },
})
