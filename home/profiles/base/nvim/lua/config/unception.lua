vim.g.unception_open_buffer_in_new_tab = true

vim.api.nvim_create_autocmd("User", {
  pattern = "UnceptionEditRequestReceived",
  callback = function()
    require("FTerm").close()
  end,
})
