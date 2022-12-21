require("diffview").setup()

require("which-key").register({
  ["="] = {
    name = "Diffview",
    o = { "<cmd>DiffviewOpen<CR>", "Open diffview" },
    c = { "<cmd>DiffviewClose<CR>", "Close diffview" },
    h = { "<cmd>DiffviewFileHistory<CR>", "Show file history" },
  },
}, {
  mode = "n",
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})
