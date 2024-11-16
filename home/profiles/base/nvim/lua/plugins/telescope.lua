local telescope_spec = use("nvim-telescope/telescope.nvim", {
  event = "VeryLazy",
})

telescope_spec.config = function()
  local telescope = require("telescope")
  local finders = require("telescope.builtin")
  local wk = require("which-key")

  telescope.setup({
    defaults = {
      file_ignore_patterns = {
        "^.direnv/",
        "^.git/",
        "%.g.dart",
        "%.freezed.dart",
      },
    },

    pickers = {
      find_files = {
        theme = "dropdown",
        hidden = true,
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

  wk.add({
    { "<Leader>f", group = "Find" },

    { "<Leader>fc", finders.highlights, desc = "Find highlights" },
    { "<Leader>ff", finders.find_files, desc = "Find files" },
    { "<Leader>fi", finders.live_grep, desc = "Find with ripgrep" },
    { "<Leader>fb", finders.buffers, desc = "Find buffers" },
    { "<Leader>fh", finders.help_tags, desc = "Find help tags" },
    { "<Leader>fk", finders.keymaps, desc = "Find keymaps" },
    { "<Leader>fr", finders.lsp_references, desc = "Find LSP references" },

    { "<Leader>fg", group = "Git" },
    { "<Leader>fgc", finders.git_commits, desc = "Find Git commits" },
    { "<Leader>fgb", group = "Find b..." },
    { "<Leader>fgbr", finders.git_branches, desc = "Find Git branches" },
    { "<Leader>fgbc", finders.git_bcommits, desc = "Find Git buffer commits" },
  })
end

return {
  telescope_spec,
}
