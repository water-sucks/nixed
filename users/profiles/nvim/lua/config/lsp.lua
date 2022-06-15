local lsp = require("lspconfig")
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
local coq = require("coq")

local servers = { "pyright", "ccls", "gopls", "bashls", "rnix" }
local disable_format_cap = { "sumneko_lua", "rnix", "gopls", "elixirls" }

local on_attach = function(client, bufnr)
  for _, v in pairs(disable_format_cap) do
    if v == client.name then
      client.server_capabilities.document_formatting = false
      break
    end
  end
  local opts = { silent = true, noremap = true, buffer = bufnr }

  map("n", "gD", vim.lsp.buf.declaration, opts)
  map("n", "gd", vim.lsp.buf.definition, opts)
  map("n", "gi", vim.lsp.buf.implementation, opts)

  map("n", "gr", ":Lspsaga rename<CR>", opts)
  map("n", "gx", ":Lspsaga code_action<CR>", opts)
  map("x", "gx", ":<c-u>Lspsaga range_code_action<CR>", opts)
  map("n", "K", ":Lspsaga hover_doc<CR>", opts)
  map("n", "go", ":Lspsaga show_line_diagnostics<CR>", opts)
  map("n", "gj", ":Lspsaga diagnostic_jump_next<CR>", opts)
  map("n", "gk", ":Lspsaga diagnostic_jump_prev<CR>", opts)
  map("n", "gh", function()
    require("lspsaga.provider").lsp_finder()
  end, { silent = true, noremap = true })
  map("n", "<C-u>", function()
    require("lspsaga.action").smart_scroll_with_saga(-1, "<c-u>")
  end, {})
  map("n", "<C-d>", function()
    require("lspsaga.action").smart_scroll_with_saga(1, "<c-d>")
  end, {})
end

for _, server in pairs(servers) do
  require("lspconfig")[server].setup(coq.lsp_ensure_capabilities({
    on_attach = on_attach,
  }))
end

lsp.sumneko_lua.setup(coq.lsp_ensure_capabilities({
  on_attach = on_attach,
  cmd = { "lua-language-server" },
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}))

lsp.elixirls.setup(coq.lsp_ensure_capabilities({
  on_attach = on_attach,
  cmd = {
    (function()
      if vim.fn.executable("elixir-ls") then
        return vim.fn.exepath("elixir-ls")
      else
        return ""
      end
    end)(),
  },
  dialyzerEnabled = false,
}))

lsp.ltex.setup(coq.lsp_ensure_capabilities({
  on_attach = on_attach,
  filetypes = { "bib", "markdown", "plaintex", "rst", "rnoweb", "tex" },
  settings = {
    ltex = {
      disabledRules = {
        ["en-US"] = { "PROFANITY" },
      },
    },
  },
}))
