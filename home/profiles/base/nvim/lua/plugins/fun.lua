local neocord_spec = use("IogaMaster/neocord", {
  event = "VeryLazy",
  config = function()
    local neocord = require("neocord")

    vim.api.nvim_create_user_command("Neocord", function(command_opts)
      local operation = command_opts.args == "" and "start" or command_opts.args

      if operation == "start" then
        neocord:connect()
        vim.notify("started neocord", vim.log.levels.INFO)
      elseif operation == "stop" then
        neocord:stop()
        vim.notify("stopped neocord", vim.log.levels.INFO)
      else
        vim.notify("Invalid argument. Use `:Neocord`, `:Neocord start` or `:Neocord stop`", vim.log.levels.ERROR)
      end
    end, {
      nargs = "?",
      complete = function(_, _, _)
        return { "start", "stop" }
      end,
    })

    neocord.setup({
      global_timer = true,
    })
  end,
})

return {
  neocord_spec,
}
