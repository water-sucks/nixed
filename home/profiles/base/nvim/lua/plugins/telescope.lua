local telescope_spec = use("nvim-telescope/telescope.nvim", {
  event = "VeryLazy",
})

telescope_spec.config = function()
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
      c = { "<cmd>Telescope highlights<CR>", "Find highlights" },
      f = { "<cmd>Telescope find_files<CR>", "Find files" },
      i = { "<cmd>Telescope live_grep<CR>", "Find with ripgrep" },
      b = { "<cmd>Telescope buffers<CR>", "Find buffers" },
      h = { "<cmd>Telescope help_tags<CR>", "Find help tags" },
      k = { "<cmd>Telescope keymaps<CR>", "Find keymaps" },
      r = { "<cmd>Telescope lsp_references<CR>", "Find LSP references" },
      g = {
        name = "Git",
        c = { "<cmd>Telescope git_commits<CR>", "Find Git commits" },
        b = {
          name = "Find b...",
          r = { "<cmd>Telescope git_branches<CR>", "Find Git branches" },
          c = { "<cmd>Telescope git_bcommits<CR>", "Find Git buffer commits" },
        },
      },
    },
  }, {
    prefix = "<Leader>",
  })
end

return {
  telescope_spec,
}
