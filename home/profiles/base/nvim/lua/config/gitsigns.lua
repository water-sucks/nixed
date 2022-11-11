local wk = require("which-key")

require("gitsigns").setup({
  signs = {
    add = { hl = "GitSignsAdd", text = "│", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
    change = {
      hl = "GitSignsChange",
      text = "│",
      numhl = "GitSignsChangeNr",
      linehl = "GitSignsChangeLn",
    },
    delete = {
      hl = "GitSignsDelete",
      text = "_",
      numhl = "GitSignsDeleteNr",
      linehl = "GitSignsDeleteLn",
    },
    topdelete = {
      hl = "GitSignsDelete",
      text = "‾",
      numhl = "GitSignsDeleteNr",
      linehl = "GitSignsDeleteLn",
    },
    changedelete = {
      hl = "GitSignsChange",
      text = "~",
      numhl = "GitSignsChangeNr",
      linehl = "GitSignsChangeLn",
    },
  },
  numhl = false,
  linehl = false,
  word_diff = false,
  watch_gitdir = {
    interval = 1000,
    follow_files = true,
  },
  attach_to_untracked = true,
  current_line_blame = false,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol",
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter_opts = {
    relative_time = false,
  },
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
})

wk.register({
  ["[c"] = { "<cmd>Gitsigns next_hunk<CR>", "Move to next hunk" },
  ["]c"] = { "<cmd>Gitsigns next_hunk<CR>", "Move to previous hunk" },
}, {
  mode = "n",
  silent = true,
  noremap = true,
})

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
  mode = "n",
  prefix = "<Leader>",
  silent = true,
  noremap = true,
})

-- I would combine these into the other register function, but currently this
-- does not work. See https://github.com/folke/which-key.nvim for more info.
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
  silent = true,
  noremap = true,
})

wk.register({
  ih = { "<cmd>Gitsigns select_hunk<CR>", "Select hunk" },
}, {
  mode = "o",
  silent = true,
  noremap = true,
})

wk.register({
  ih = { "<cmd>Gitsigns select_hunk<CR>", "Select hunk" },
}, {
  mode = "x",
  silent = true,
  noremap = true,
})
