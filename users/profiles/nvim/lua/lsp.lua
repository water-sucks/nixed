local lsp = require("lspconfig")

vim.g.coq_settings = {
  auto_start = 'shut-up',
  xdg = true,
}
local coq = require("coq")

-- Python (Using Jedi, go and fight!)
lsp.pyright.setup(coq.lsp_ensure_capabilities({}))

-- Java (Pain in the ass, I'll set up later...I think?)

-- C++/C (Using clangd, but musically)
lsp.ccls.setup(coq.lsp_ensure_capabilities({}))

-- Dart (Yay, Flutter and friends! Uses flutter-tools.nvim for automatic setup)
-- require("flutter-tools").setup({
--   decorations = {
--     statusline = {
--       device = true,
--     }
--   },
--   widget_guides = {
--     enabled = true,
--   }
-- })
lsp.dartls.setup(coq.lsp_ensure_capabilities({}))

-- Golang (Go go go show me how much of a failure I am!)
lsp.gopls.setup(coq.lsp_ensure_capabilities({}))

-- GraphQL (Running around in circles, just waiting to cross paths with something)
lsp.graphql.setup(coq.lsp_ensure_capabilities({}))

-- Bash (Exactly what I'm doing with my head to the table while writing shell scripts)
lsp.bashls.setup(coq.lsp_ensure_capabilities({}))

-- Rust (Creating stainless steel tools using Rust! Uses rust-tools.nvim for automatic setup)
require("rust-tools").setup({})

-- Elixir (Potions and such, except with good directions and lots of map, filter, and reduce)
lsp.elixirls.setup(coq.lsp_ensure_capabilities({
  cmd = { vim.fn.stdpath("config") .. "/scripts/elixir-ls.sh" },
  dialyzerEnabled = false,
}))

-- Elm (I'm not stuck in the woods, but at least I'll have no runtime errors if I am!)
lsp.elmls.setup(coq.lsp_ensure_capabilities({}))

-- OCaml (I don't worship camels, I know it's a bit misleading)
lsp.ocamllsp.setup(coq.lsp_ensure_capabilities({
  cmd = { "esy", "ocamllsp" }
}))

-- Lua (I don't even understand, arrays start from 1? Sacrilege!)
lsp.sumneko_lua.setup {
  cmd = { "lua-language-server" },
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT"
      },
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}

-- Nix (Can't believe my life hasn't been nixed from using Nix)
lsp.rnix.setup(coq.lsp_ensure_capabilities({}))

-- Explicitly set LSP diagnostics to update in insert mode
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        update_in_insert = true,
      }
    )
