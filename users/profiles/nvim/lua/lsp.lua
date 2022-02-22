local lsp = require("lspconfig")
local map = vim.api.nvim_set_keymap

vim.g.coq_settings = {
  auto_start = "shut-up",
  xdg = true,
}
local coq = require("coq")

map("i", "<esc>", [[pumvisible() ? "<c-e><esc>" : "<esc>"]], { expr = true, noremap = true })
map("i", "<c-c>", [[pumvisible() ? "<c-e><c-c>" : "<c-c>"]], { expr = true, noremap = true })
map("i", "<tab>", [[pumvisible() ? "<c-n>" : "<tab>"]], { expr = true, noremap = true })
map("i", "<s-tab>", [[pumvisible() ? "<c-p>" : "<bs>"]], { expr = true, noremap = true })

local on_attach = function(client)
  if client.resolved_capabilities.document_formatting then
    vim.cmd([[
      augroup LspFormatting
        autocmd! * <buffer>
        autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
      augroup END
    ]])
  end
end

-- Python (Using Jedi, go and fight!)
lsp.pyright.setup(coq.lsp_ensure_capabilities({
  on_attach = on_attach,
}))

-- Java (Pain in the ass, I'll set up later...I think?)

-- C++/C (Using clangd, but musically)
lsp.ccls.setup(coq.lsp_ensure_capabilities({
  on_attach = on_attach,
}))

-- Dart (Yay, Flutter and friends! Uses flutter-tools.nvim for automatic setup)
-- Disabling flutter-tools because it does not work on Dart-only projects
-- require("flutter-tools").setup({
--   on_attach = on_attach,
--   decorations = {
--     statusline = {
--       device = true,
--     },
--   },
--   widget_guides = {
--     enabled = true,
--   },
-- })
lsp.dartls.setup(coq.lsp_ensure_capabilities({
  on_attach = on_attach,
}))

-- Golang (Go go go show me how much of a failure I am!)
lsp.gopls.setup(coq.lsp_ensure_capabilities({
  on_attach = on_attach,
}))

-- GraphQL (Running around in circles, just waiting to cross paths with something)
-- lsp.graphql.setup(coq.lsp_ensure_capabilities({})) -- Disabled until I can package it

-- Bash (Exactly what I'm doing with my head to the table while writing shell scripts)
lsp.bashls.setup(coq.lsp_ensure_capabilities({}))

-- Rust (Creating stainless steel tools using Rust! Uses rust-tools.nvim for automatic setup)
require("rust-tools").setup({})

-- Elixir (Potions and such, except with good directions and lots of map, filter, and reduce)
local elixir_ls_path = function()
  if vim.fn.executable("elixir-ls") then
    local handle = io.popen("which elixir-ls")
    local path = handle:read("*a")
    path = path:gsub("%s+", "")
    return path
  else
    return ""
  end
end
lsp.elixirls.setup(coq.lsp_ensure_capabilities({
  on_attach = on_attach,
  cmd = { elixir_ls_path() },
  dialyzerEnabled = false,
}))

-- Elm (I'm not stuck in the woods, but at least I'll have no runtime errors if I am!)
lsp.elmls.setup(coq.lsp_ensure_capabilities({
  on_attach = on_attach,
}))

-- OCaml (I don't worship camels, I know it's a bit misleading)
lsp.ocamllsp.setup(coq.lsp_ensure_capabilities({
  on_attach = on_attach,
}))

-- Lua (I don't even understand, arrays start from 1? Sacrilege!)
lsp.sumneko_lua.setup({
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
})

-- Nix (Can't believe my life hasn't been nixed from using Nix)
lsp.rnix.setup(coq.lsp_ensure_capabilities({
  on_attach = on_attach,
}))

-- Explicitly set LSP diagnostics to update in insert mode
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    update_in_insert = true,
  }
)

local null_ls = require("null-ls")

null_ls.setup({
  on_attach = on_attach,
  sources = {
    null_ls.builtins.formatting.asmfmt,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.dart_format,
    null_ls.builtins.formatting.elm_format,
    null_ls.builtins.formatting.gofumpt,
    null_ls.builtins.formatting.prettier,
    -- null_ls.builtins.formatting.mix,
    null_ls.builtins.formatting.rustfmt,
    null_ls.builtins.formatting.shellharden,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.stylua,

    null_ls.builtins.diagnostics.cppcheck,
    -- null_ls.builtins.diagnostics.credo,
    -- null_ls.builtins.diagnostics.editorconfig_checker,
    null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.diagnostics.gitlint,
    null_ls.builtins.diagnostics.markdownlint,
    -- null_ls.builtins.diagnostics.deadnix,
    null_ls.builtins.diagnostics.proselint,
    null_ls.builtins.diagnostics.shellcheck,
    null_ls.builtins.diagnostics.statix,
    null_ls.builtins.diagnostics.vint,
    null_ls.builtins.diagnostics.write_good,

    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.code_actions.proselint,
    null_ls.builtins.code_actions.shellcheck,
    null_ls.builtins.code_actions.statix,
  },
})
