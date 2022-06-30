require("lspsaga").init_lsp_saga({
  diagnostic_header = { "", "", "", "" },
  show_diagnostic_source = true,
  code_action_icon = " ",
  max_preview_lines = 13,
  rename_action_quit = "q",
  definition_preview_icon = "  ",
  code_action_lightbulb = {
    enable = true,
    sign = false,
    virtual_text = true,
  },
})
