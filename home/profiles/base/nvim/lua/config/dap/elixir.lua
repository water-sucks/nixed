local dap = require("dap")

-- This assumes that elixir-ls is in the PATH and is executable
dap.adapters.mix_task = {
  type = "executable",
  command = string.gsub(vim.fn.exepath("elixir-ls"), "(.*/)(.*/)(.*)", "%1") .. "lib/debugger.sh",
  args = {},
}

require("dap.ext.vscode").load_launchjs()

-- I have to manually assign these to the Elixir debug config
-- table after loading existing VSCode launch.json configs
dap.configurations.elixir = dap.configurations.mix_task
