require("telescope").setup({
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    lsp_code_actions = {
      theme = "cursor",
    },
  },
})

require("which-key").register({
  f = {
    name = "Telescope",
    f = { ":Telescope find_files<CR>", "Find files" },
    g = { ":Telescope live_grep<CR>", "Find" },
    b = { ":Telescope buffers<CR>", "Find buffers" },
    h = { ":Telescope help_tags<CR>", "Find help tags" },
    k = { ":Telescope keymaps<CR>", "Find keymaps" },
    c = { ":Telescope git_commits<CR>", "Find Git commits" },
    bc = { ":Telescope git_bcommits<CR>", "Find buffer Git commits" },
    br = { ":Telescope git_branches<CR>", "Find Git branches" },
  },
}, {
  mode = "n",
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})
