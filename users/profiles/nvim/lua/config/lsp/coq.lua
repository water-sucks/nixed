local map = vim.keymap.set

-- Need to set coq settings before coq
-- is required for the first time
vim.g.coq_settings = {
  auto_start = "shut-up",
  xdg = true,
  keymap = {
    recommended = false,
  },
  clients = {
    lsp = {
      enabled = true,
      weight_adjust = 1.7,
    },
    snippets = {
      enabled = true,
      warn = {},
      weight_adjust = 1.2,
    },
    tree_sitter = {
      enabled = true,
      weight_adjust = 1.3,
    },
    tags = {
      enabled = true,
      weight_adjust = 0.8,
    },
    paths = {
      enabled = true,
      weight_adjust = 0.9,
    },
    buffers = {
      enabled = true,
      weight_adjust = 1.1,
    },
    tmux = {
      enabled = false,
    },
    third_party = {
      enabled = true,
      weight_adjust = 1.2,
    },
  },
}

require("coq_3p")({
  {
    src = "repl",
    short_name = "SH",
    sh = "zsh",
    max_lines = 99,
    deadline = 500,
    unsafe = { "rm", "poweroff", "reboot", "mv", ... },
  },
  { src = "nvimlua", short_name = "NLUA", conf_only = false },
  { src = "vimtex", short_name = "TEX" },
  -- Neorg as a source would be nice
  { src = "bc", short_name = "CALC", precision = 7 },
  { src = "cow", trigger = "!cow" },
})

map("i", "<esc>", [[pumvisible() ? "<c-e><esc>" : "<esc>"]], { expr = true, noremap = true })
map("i", "<c-c>", [[pumvisible() ? "<c-e><c-c>" : "<c-c>"]], { expr = true, noremap = true })
map("i", "<tab>", [[pumvisible() ? "<c-n>" : "<tab>"]], { expr = true, noremap = true })
map("i", "<s-tab>", [[pumvisible() ? "<c-p>" : "<bs>"]], { expr = true, noremap = true })
