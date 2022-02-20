local mappings_utils = require("renamer.mappings.utils")
local map = vim.api.nvim_set_keymap

require("renamer").setup({
  title = "Rename",
  padding = {
    top = 0,
    left = 0,
    bottom = 0,
    right = 0,
  },
  min_width = 15,
  max_width = 45,
  border = true,
  border_chars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  -- Whether or not to highlight the current word references through LSP
  show_refs = true,
  with_qf_list = true,
  with_popup = true,
  mappings = {
    ["<c-i>"] = mappings_utils.set_cursor_to_start,
    ["<c-a>"] = mappings_utils.set_cursor_to_end,
    ["<c-e>"] = mappings_utils.set_cursor_to_word_end,
    ["<c-b>"] = mappings_utils.set_cursor_to_word_start,
    ["<c-c>"] = mappings_utils.clear_line,
    ["<c-u>"] = mappings_utils.undo,
    ["<c-r>"] = mappings_utils.redo,
  },
  handler = nil,
})

map("n", "<Leader>rn", ":lua require('renamer').rename()<CR>", { silent = true, noremap = true })
map("v", "<Leader>rn", ":lua require('renamer').rename()<CR>", { silent = true, noremap = true })
