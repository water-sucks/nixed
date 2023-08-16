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
  "typst_lsp",
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
  gopls = {
    settings = {
      gopls = {
        analyses = {
          composites = false,
          structtag = false,
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
    settings = {
      ["nil"] = {
        nix = {
          flake = {
            autoArchive = true,
          },
        },
      },
    },
    on_attach = function(client, bufnr)
      on_attach(client, bufnr)
      client.server_capabilities.semanticTokensProvider = nil
    end,
  },
}

-- Prevent quickfix list from popping up when attempting to
-- format Zig files if there are errors
vim.g.zig_fmt_parse_errors = 0

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
