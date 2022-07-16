require("diffview").setup()

require("which-key").register({
  c = {
    name = "Diffview",
    o = { ":DiffviewOpen<CR>", "Open diffview" },
    c = { ":DiffviewOpen<CR>", "Close diffview" },
    h = { ":DiffviewFileHistory<CR>", "Show file history" },
  },
}, {
  mode = "n",
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})
