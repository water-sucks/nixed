local dap = require("dap")
local dapui = require("dapui")
local wk = require("which-key")

---@diagnostic disable-next-line: missing-fields
dapui.setup({
  ---@diagnostic disable-next-line: missing-fields
  controls = {
    enabled = false,
  },

  icons = {
    expanded = "▾",
    collapsed = "▸",
    current_frame = "*",
  },
  mappings = {
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  layouts = {
    {
      elements = {
        "breakpoints",
        "scopes",
        "watches",
      },
      size = 0.30,
      position = "left",
    },
    {
      elements = {
        "console",
        "repl",
      },
      size = 0.25,
      position = "bottom",
    },
  },
  floating = {
    max_height = 0.8,
    max_width = 0.8,
    border = "single",
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
})

dap.listeners.after.event_initialized["dapui_config"] = dapui.open
dap.listeners.before.launch.dapui_config = dapui.open

local function delayed_close()
  vim.defer_fn(function()
    dapui.close()
  end, 3000)
end

dap.listeners.before.event_terminated["dapui_config"] = delayed_close
dap.listeners.before.event_exited["dapui_config"] = delayed_close

wk.add({
  {
    "<Leader>dE",
    function()
      local expression = vim.fn.input({ prompt = "[Expression] > " })
      dapui.eval(expression)
    end,
    desc = "Evaluate input",
  },
  {
    "<Leader>dW",
    function()
      dapui.open({ reset = true })
    end,
    desc = "Reset UI layout",
  },
  { "<Leader>de", dapui.eval, desc = "Evaluate", mode = { "n", "v" } },
  { "<Leader>dU", dapui.toggle, desc = "Toggle UI" },
})
