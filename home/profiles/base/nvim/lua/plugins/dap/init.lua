local dap_spec = use("mfussenegger/nvim-dap", {
  event = "VeryLazy",
  config = function()
    for _, file in ipairs({ "dap", "c", "haskell", "elixir" }) do
      require("plugins.dap." .. file)
    end
  end,
})

local dapui_spec = use("rcarriga/nvim-dap-ui", {
  event = "VeryLazy",
  dependencies = { use("mfussenegger/nvim-dap") },
  config = function()
    require("plugins.dap.ui")
  end,
})

local dap_virtual_text_spec = use("theHamsta/nvim-dap-virtual-text", {
  event = "VeryLazy",
  config = function()
    require("nvim-dap-virtual-text").setup()
  end,
})

local osv_spec = use("jbyuki/one-small-step-for-vimkind", {
  event = "VeryLazy",
  dependencies = { use("mfussenegger/nvim-dap") },
  config = function()
    require("plugins.dap.nlua")
  end,
})

local dap_go_spec = use("leoluz/nvim-dap-go", {
  event = "VeryLazy",
  dependencies = { use("mfussenegger/nvim-dap") },
  config = function()
    require("dap-go").setup()
  end,
})

local dap_python_spec = use("mfussenegger/nvim-dap-python", {
  event = "VeryLazy",
  dependencies = { use("mfussenegger/nvim-dap") },
  config = function()
    if vim.fn.executable("python3") then
      require("dap-python").setup(vim.fn.exepath("python3"))
    end
  end,
})

return {
  dap_spec,
  dapui_spec,
  dap_virtual_text_spec,
  osv_spec,
  dap_go_spec,
  dap_python_spec,
}
