require("autosave").setup({
  execution_message = "Autosaved at " .. vim.fn.strftime("%H:%M:%S"),
  events = { "InsertLeave", "TextChanged" },
  debounce_delay = 200,
})
