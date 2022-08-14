local dap = require("dap")

local signs = {
  Breakpoint = "",
  BreakpointCondition = "",
  LogPoint = "",
  Stopped = "",
  BreakpointRejected = "",
}

for type, icon in pairs(signs) do
  local hl = "Dap" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = "LspDiagnosticsSignHint" })
end

require("which-key").register({
  d = {
    name = "Debug",
    b = { dap.step_back, "Step back" },
    c = { dap.continue, "Continue" },
    d = { dap.disconnect, "Disconnect" },
    g = { dap.session, "Get session" },
    i = { dap.step_into, "Step into" },
    o = { dap.step_over, "Step over" },
    p = { dap.pause, "Pause" },
    q = { dap.close, "Quit" },
    r = { dap.repl.toggle, "Toggle REPL" },
    s = { dap.continue, "Start" },
    t = { dap.toggle_breakpoint, "Toggle breakpoint" },
    x = { dap.terminate, "Terminate" },
    u = { dap.step_out, "Step out" },
    R = { dap.run_to_cursor, "Run to cursor" },
    B = {
      function()
        dap.set_breakpoint(vim.fn.input("[Condition] > "))
      end,
      "Conditional breakpoint",
    },
  },
}, {
  mode = "n",
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})

-- Source DAP configs for filetypes without specific DAP plugins
local files = { "c", "haskell", "elixir" }

for _, file in ipairs(files) do
  require("config.dap." .. file)
end
