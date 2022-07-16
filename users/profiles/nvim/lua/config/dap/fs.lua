local dap = require("dap")

dap.adapters.netcoredbg = {
  type = "executable",
  command = vim.fn.exepath("netcoredbg"),
  args = { "--interpreter=vscode" },
}

require("dap.ext.vscode").load_launchjs()

dap.configurations.fsharp = dap.configurations.netcoredbg or {}
