local autosave = require("auto-save")

autosave.setup({
  -- For some reason, this option is not working.
  -- I'll set it manually instead
  enabled = false,
  execution_message = {
    message = function()
      return "Autosaved at " .. vim.fn.strftime("%H:%M:%S")
    end,
  },
})

autosave.off()
