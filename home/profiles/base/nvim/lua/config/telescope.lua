require("telescope").setup({
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    live_grep = {},
    buffers = {
      theme = "ivy",
    },
    help_tags = {
      theme = "ivy",
    },
    keymaps = {
      theme = "ivy",
    },
    lsp_references = {
      theme = "ivy",
    },
    git_commits = {
      theme = "ivy",
    },
    git_bcommits = {
      theme = "ivy",
    },
    git_branches = {
      theme = "ivy",
    },
  },
})

require("which-key").register({
  f = {
    name = "Telescope",
    f = { ":Telescope find_files<CR>", "Find files" },
    i = { ":Telescope live_grep<CR>", "Find with ripgrep" },
    b = { ":Telescope buffers<CR>", "Find buffers" },
    h = { ":Telescope help_tags<CR>", "Find help tags" },
    k = { ":Telescope keymaps<CR>", "Find keymaps" },
    r = { ":Telescope lsp_references<CR>", "Find LSP references" },
    g = {
      name = "Git",
      c = { ":Telescope git_commits<CR>", "Find Git commits" },
      b = {
        name = "Find b...",
        r = { ":Telescope git_branches<CR>", "Find Git branches" },
        c = { ":Telescope git_bcommits<CR>", "Find Git buffer commits" },
      },
    },
  },
}, {
  mode = "n",
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})
