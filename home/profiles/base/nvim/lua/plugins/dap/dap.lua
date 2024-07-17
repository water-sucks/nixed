local dap = require("dap")
local wk = require("which-key")

local signs = {
  Breakpoint = "",
  BreakpointCondition = "",
  LogPoint = "",
  Stopped = "",
  BreakpointRejected = "󰊙",
}

for type, icon in pairs(signs) do
  local hl = "Dap" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = "LspDiagnosticsSignHint" })
end

local function conditionalBreakpoint()
  vim.ui.input({ prompt = "Condition" }, function(cond)
    dap.set_breakpoint(cond)
  end)
end

wk.add({
  { "<Leader>d", group = "Debug" },
  { "<Leader>db", dap.step_back, desc = "Step back" },
  { "<Leader>dc", dap.continue, desc = "Continue" },
  { "<Leader>dd", dap.disconnect, desc = "Disconnect" },
  { "<Leader>dg", dap.session, desc = "Get session" },
  { "<Leader>di", dap.step_into, desc = "Step into" },
  { "<Leader>do", dap.step_over, desc = "Step over" },
  { "<Leader>dp", dap.pause, desc = "Pause" },
  { "<Leader>dq", dap.close, desc = "Quit" },
  { "<Leader>dr", dap.repl.toggle, desc = "Toggle REPL" },
  { "<Leader>ds", dap.continue, desc = "Start" },
  { "<Leader>dt", dap.toggle_breakpoint, desc = "Toggle breakpoint" },
  { "<Leader>dx", dap.terminate, desc = "Terminate" },
  { "<Leader>du", dap.step_out, desc = "Step out" },
  { "<Leader>dR", dap.run_to_cursor, desc = "Run to cursor" },
  { "<Leader>dB", conditionalBreakpoint, desc = "Conditional breakpoint" },
})
