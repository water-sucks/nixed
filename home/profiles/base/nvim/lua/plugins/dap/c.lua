local dap = require("dap")

dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  executable = {
    command = vim.fn.stdpath("data") .. "/vscode-lldb/adapter/codelldb",
    args = { "--port", "${port}" },
    -- detached = false,
  },
}

local configurations = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input({ prompt = "Path to executable: ", default = vim.fn.getcwd() .. "/", completion = "file" })
    end,
    cwd = "${workspaceFolder}",
    terminal = "integrated",
  },
}

dap.configurations.cpp = configurations
dap.configurations.c = configurations
dap.configurations.zig = configurations
