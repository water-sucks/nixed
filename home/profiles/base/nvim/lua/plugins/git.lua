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
  local gitsigns = require("gitsigns")
  local wk = require("which-key")

  gitsigns.setup({})

  wk.add({
    { "<Leader>h", group = "Gitsigns" },

    {
      "[c",
      function()
        gitsigns.nav_hunk("prev", { navigation_message = false })
      end,
      desc = "Move to next hunk",
    },
    {
      "]c",
      function()
        gitsigns.nav_hunk("next", { navigation_message = false })
      end,
      desc = "Move to next hunk",
    },

    { "<Leader>hs", gitsigns.stage_hunk, desc = "Stage hunk", mode = { "n", "v" } },
    { "<Leader>hu", gitsigns.undo_stage_hunk, desc = "Unstage hunk", mode = { "n", "v" } },
    { "<Leader>hr", gitsigns.reset_hunk, desc = "Reset hunk", mode = { "n", "v" } },
    { "<Leader>hp", gitsigns.preview_hunk, desc = "Preview hunk" },
    { "<Leader>hS", gitsigns.stage_buffer, desc = "Stage buffer" },
    { "<Leader>hR", gitsigns.reset_buffer_index, desc = "Unstage buffer" },
    { "<Leader>hU", gitsigns.reset_buffer, desc = "Reset buffer" },
    { "<Leader>hB", gitsigns.blame, desc = "Show blame window" },
    { "<Leader>hb", gitsigns.toggle_current_line_blame, desc = "Toggle blame virtual text" },

    { "ih", "<C-U>Gitsigns select_hunk<CR>", desc = "Select hunk", mode = { "x", "o" } },
  })
end

return {
  diffview_spec,
  gitsigns_spec,
}
