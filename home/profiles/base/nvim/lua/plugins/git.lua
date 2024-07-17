local diffview_spec = use("sindrets/diffview.nvim", {
  event = "VeryLazy",
})

local gitsigns_spec = use("lewis6991/gitsigns.nvim", {
  event = "VeryLazy",
})

diffview_spec.config = function()
  require("diffview").setup()

  require("which-key").add({
    { "<Leader>=", group = "Diffview " },
    { "<Leader>=o", "<cmd>DiffviewOpen<CR>", desc = "Open diffview" },
    { "<Leader>=c", "<cmd>DiffviewClose<CR>", desc = "Close diffview" },
    { "<Leader>=h", "<cmd>DiffviewFileHistory<CR>", desc = "Show file history" },
  })
end

gitsigns_spec.config = function()
  local wk = require("which-key")

  require("gitsigns").setup({})

  wk.add({
    { "[c", "<cmd>Gitsigns next_hunk<CR>", desc = "Move to next hunk" },
    { "]c", "<cmd>Gitsigns prev_hunk<CR>", desc = "Move to previous hunk" },

    { "<Leader>h", group = "Gitsigns" },
    { "<Leader>hs", "<cmd>Gitsigns stage_hunk<CR>", desc = "Stage hunk", mode = { "n", "v" } },
    { "<Leader>hu", "<cmd>Gitsigns undo_stage_hunk<CR>", desc = "Unstage hunk", mode = { "n", "v" } },
    { "<Leader>hr", "<cmd>Gitsigns reset_hunk<CR>", desc = "Reset hunk", mode = { "n", "v" } },
    { "<Leader>hp", "<cmd>Gitsigns preview_hunk<CR>", desc = "Preview hunk" },
    { "<Leader>hS", "<cmd>Gitsigns stage_buffer<CR>", desc = "Stage buffer" },
    { "<Leader>hR", "<cmd>Gitsigns reset_buffer_index<CR>", desc = "Unstage buffer" },
    { "<Leader>hU", "<cmd>Gitsigns reset_buffer<CR>", desc = "Reset buffer" },
    { "<Leader>hB", "<cmd>Gitsigns blame<CR>", desc = "Show blame window" },
    { "<Leader>hb", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "Toggle blame virtual text" },

    { "ih", "<C-U>Gitsigns select_hunk<CR>", desc = "Select hunk", mode = { "x", "o" } },
  })
end

return {
  diffview_spec,
  gitsigns_spec,
}
