local lsp = require("lspconfig")
local on_attach = require("config.lsp.on_attach")

-- Rust/Flutter/LTeX are configured in
-- their respective plugins.
local servers = {
  "pyright",
  "ccls",
  "gopls",
  "bashls",
  "sumneko_lua",
  "elixirls",
  "ltex",
  "rnix",
}

local server_configs = {
  sumneko_lua = {
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
  },
  elixirls = {
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
  },
  ltex = {
    on_attach = function(client, bufnr)
      on_attach(client, bufnr)
      require("ltex_extra").setup({
        load_langs = { "en-US" },
        init_check = true,
      })
    end,
    filetypes = { "latex", "tex", "bib", "markdown" },
    settings = {
      ltex = {
        -- Required to specify these.
        dictionary = {},
        disabledRules = {},
        hiddenFalsePositives = {},
      },
    },
  },
}

for _, server in pairs(servers) do
  local config = {
    on_attach = on_attach,
  }

  if server_configs[server] ~= nil then
    for key, value in pairs(server_configs[server]) do
      config[key] = value
    end
  end

  lsp[server].setup(config)
end
