require("lspsaga").setup({
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  use_saga_diagnostic_sign = true,
  use_diagnostic_virtual_text = true,
  diagnostic_header_icon = "",
  code_action_icon = " ",
  finder_definition_icon = "ƒ ",
  finder_reference_icon = "ƒ ",
  max_preview_lines = 13,
  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>",
  },
  rename_action_keys = {
    quit = "<C-c>",
    exec = "<CR>",
  },
  definition_preview_icon = "  ",
  border_style = "single",
  rename_prompt_prefix = "➤",
  rename_output_qflist = {
    enable = false,
    auto_open_qflist = false,
  },
  highlight_prefix = false,
})
