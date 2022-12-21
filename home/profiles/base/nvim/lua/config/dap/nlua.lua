local dap = require("dap")

dap.configurations.lua = {
  {
    type = "nlua",
    request = "attach",
    name = "Attach to running Neovim instance",
    host = function()
      local value = vim.fn.input({ prompt = "Host [127.0.0.1]: ", default = "127.0.0.1" })
      if value ~= "" then
        return value
      end
      return "127.0.0.1"
    end,
    port = function()
      local value = tonumber(vim.fn.input({ prompt = "Port: ", default = "9263" }))
      assert(value, "Please provide a port number")
      return value
    end,
  },
}

vim.api.nvim_create_user_command("OSVStart", function()
  require("osv").launch({ port = 9263 })
end, {})

dap.adapters.nlua = function(callback, config)
  callback({
    type = "server",
    host = config.host or "127.0.0.1",
    port = config.port or "9263",
  })
end
