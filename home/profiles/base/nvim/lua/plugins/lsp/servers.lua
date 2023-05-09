local lsp = require("lspconfig")
local on_attach = require("plugins.lsp.on_attach")

-- Rust/Flutter/LTeX are configured in
-- their respective plugins.
local servers = {
  "pyright",
  "ccls",
  "gopls",
  "bashls",
  "lua_ls",
  "html",
  "cssls",
  "emmet_ls",
  "elixirls",
  "graphql",
  "ltex",
  "nil_ls",
  "nickel_ls",
  "vala_ls",
  "zls",
}

local server_configs = {
  lua_ls = {
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
        },
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
          checkThirdParty = false,
        },
        telemetry = {
          enable = false,
        },
      },
    },
  },
  html = {
    settings = {
      html = {
        format = {
          templating = true,
          wrapLineLength = 120,
          wrapAttributes = "auto",
        },
        hover = {
          documentation = true,
          references = true,
        },
      },
    },
    init_options = {
      provideFormatter = false,
    },
  },
  elixirls = {
    cmd = { "elixir-ls" },
    dialyzerEnabled = false,
  },
  ltex = {
    on_attach = function(client, bufnr)
      on_attach(client, bufnr)
      require("ltex_extra").setup({
        load_langs = { "en-US" },
        init_check = true,
        path = vim.fn.stdpath("cache") .. "/spell/custom-dict",
      })
    end,
    filetypes = { "latex", "tex", "bib", "markdown" },
    settings = {
      ltex = {
        -- Currently not working, probably due to ltex_extra.nvim.
        -- Let's figure this out later, just don't use any
        -- cursewords in prose! Shouldn't be too hard (for now).
        disabledRules = {
          ["en-US"] = { "PROFANITY" },
        },
      },
    },
  },
  nil_ls = {
    on_attach = function(client, bufnr)
      on_attach(client, bufnr)
      client.server_capabilities.semanticTokensProvider = nil
    end,
  },
}

require("neodev").setup({
  library = {
    enabled = true,
    runtime = true,
    types = true,
    plugins = true,
  },
  lspconfig = true,
})

for _, server in pairs(servers) do
  ---@type table<string, boolean|function|table>
  local config = {
    on_attach = on_attach,
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
  }

  if server_configs[server] ~= nil then
    for key, value in pairs(server_configs[server]) do
      config[key] = value
    end
  end

  lsp[server].setup(config)
end

-- I got very annoyed by the ccls message about offset encodings,
-- and decided to silence it. It's a legitimate issue that needs
-- to be fixed upstream, though, so I'm following it.
-- local notify = vim.notify
---@diagnostic disable-next-line: duplicate-set-field
-- vim.notify = function(msg, ...)
--   if msg:match("warning: multiple different client offset_encodings") then
--     return
--   end
--
--   vim.notify(msg, ...)
-- end
