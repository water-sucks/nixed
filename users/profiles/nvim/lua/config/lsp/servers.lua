local lsp = require("lspconfig")
local on_attach = require("config.lsp.on_attach")
local coq = require("coq")

-- Rust/Flutter/LTeX are configured in
-- their respective plugins.
local servers = {
  "pyright",
  "ccls",
  "gopls",
  "bashls",
  "sumneko_lua",
  "elixirls",
  "graphql",
  "ltex",
  "hls",
  "rnix",
}

local server_configs = {
  sumneko_lua = require("lua-dev").setup({
    runtime_path = true,
  }),
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
        path = vim.fn.stdpath("config") .. "/spell/custom-dict/",
      })
    end,
    filetypes = { "latex", "tex", "bib", "markdown" },
    settings = {
      ltex = {
        -- Currently not working, probably due to ltex_extra.nvim.
        -- Let's figure this out later, just don't use any
        -- cursewords in prose! Shouldn't be too hard (for now).
        -- disabledRules = {
        --   ["en-US"] = { "PROFANITY" },
        -- },
      },
    },
  },
  rnix = {
    cmd = { "nil" }, -- Yes, this hijacks rnix-lsp
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

  lsp[server].setup(coq.lsp_ensure_capabilities(config))
end

-- I got very annoyed by the ccls message about offset encodings,
-- and decided to silence it. It's a legitimate issue that needs
-- to be fixed upstream, though, so I'm following it.
local notify = vim.notify
vim.notify = function(msg, ...)
  if msg:match("warning: multiple different client offset_encodings") then
    return
  end

  notify(msg, ...)
end
