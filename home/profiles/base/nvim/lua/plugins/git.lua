local diffview_spec = use("sindrets/diffview.nvim", {
  event = "VeryLazy",
})

local gitsigns_spec = use("lewis6991/gitsigns.nvim", {
  event = "VeryLazy",
})

diffview_spec.config = function()
  require("diffview").setup()

  require("which-key").register({
    ["="] = {
      name = "Diffview",
      o = { "<cmd>DiffviewOpen<CR>", "Open diffview" },
      c = { "<cmd>DiffviewClose<CR>", "Close diffview" },
      h = { "<cmd>DiffviewFileHistory<CR>", "Show file history" },
    },
  }, {
    prefix = "<Leader>",
  })
end

gitsigns_spec.config = function()
  local wk = require("which-key")

  require("gitsigns").setup({})

  wk.register({
    ["[c"] = { "<cmd>Gitsigns next_hunk<CR>", "Move to next hunk" },
    ["]c"] = { "<cmd>Gitsigns next_hunk<CR>", "Move to previous hunk" },
  }, {})

  wk.register({
    h = {
      name = "Gitsigns",
      s = { "<cmd>Gitsigns stage_hunk<CR>", "Stage hunk" },
      u = { "<cmd>Gitsigns undo_stage_hunk<CR>", "Unstage hunk" },
      r = { "<cmd>Gitsigns reset_hunk<CR>", "Reset hunk" },
      p = { "<cmd>Gitsigns preview_hunk<CR>", "Preview hunk" },
      S = { "<cmd>Gitsigns stage_buffer<CR>", "Stage buffer" },
      R = { "<cmd>Gitsigns reset_buffer_index<CR>", "Unstage buffer" },
      U = { "<cmd>Gitsigns reset_buffer<CR>", "Reset buffer" },
    },
  }, {
    prefix = "<Leader>",
  })

  wk.register({
    h = {
      name = "Gitsigns",
      s = { "<cmd>Gitsigns stage_hunk<CR>", "Stage hunk" },
      u = { "<cmd>Gitsigns undo_stage_hunk<CR>", "Unstage hunk" },
      r = { "<cmd>Gitsigns reset_hunk<CR>", "Reset hunk" },
    },
  }, {
    mode = "v",
    prefix = "<Leader>",
  })

  wk.register({
    ih = { "<cmd>Gitsigns select_hunk<CR>", "Select hunk" },
  }, {
    mode = { "x", "o" },
  })
end

return {
  diffview_spec,
  gitsigns_spec,
}
