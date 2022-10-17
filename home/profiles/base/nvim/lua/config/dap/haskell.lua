local dap = require("dap")

dap.adapters.haskell = {
  type = "executable",
  command = "haskell-debug-adapter",
  args = {},
}

dap.configurations.haskell = {
  {
    type = "haskell",
    request = "launch",
    name = "Debug (using cabal)",
    workspace = "${workspaceFolder}",
    startup = "${file}",
    stopOnEntry = true,
    logFile = vim.fn.stdpath("data") .. "/haskell-dap.log",
    logLevel = "WARNING",
    ghciEnv = vim.empty_dict(),
    ghciPrompt = "λ: ",
    ghciInitialPrompt = "λ: ",
    ghciCmd = "cabal exec -- ghci-dap --interactive -i -i${workspaceFolder}",
  },
  {
    type = "haskell",
    request = "launch",
    name = "Debug (using stack)",
    workspace = "${workspaceFolder}",
    startup = "${file}",
    stopOnEntry = true,
    logFile = vim.fn.stdpath("data") .. "/haskell-dap.log",
    logLevel = "WARNING",
    ghciEnv = vim.empty_dict(),
    ghciPrompt = "λ: ",
    ghciInitialPrompt = "λ: ",
    ghciCmd = "stack ghci --test --no-load --no-build --main-is TARGET --ghci-options -fprint-evld-with-show",
  },
}
