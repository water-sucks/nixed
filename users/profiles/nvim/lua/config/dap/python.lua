if vim.fn.executable("python3") then
  require("dap-python").setup(vim.fn.exepath("python3"))
end
