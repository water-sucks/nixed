local telescope = require("telescope")

telescope.setup({
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    lsp_code_actions = {
      theme = "cursor",
    },
  },
})
