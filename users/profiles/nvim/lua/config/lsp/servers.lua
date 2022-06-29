local lsp = require("lspconfig")
local coq = require("coq")
local wk = require("which-key")

local servers = { "pyright", "ccls", "gopls", "bashls", "rnix" }
local disable_format_cap = { "sumneko_lua", "rnix", "gopls", "elixirls" }

local on_attach = function(client, bufnr)
  for _, v in pairs(disable_format_cap) do
    if v == client.name then
      client.server_capabilities.document_formatting = false
      break
    end
  end

  local keymaps = {
    g = {
      name = "LSP",
      D = { vim.lsp.buf.declaration, "Go to declaration" },
      d = { vim.lsp.buf.definition, "Go to definition" },
      i = { vim.lsp.buf.implementation, "Go to implementation" },

      r = { ":Lspsaga rename<CR>", "Rename" },
      x = { ":Lspsaga code_action<CR>", "Show code actions" },

      o = { ":Lspsaga show_line_diagnostics<CR>", "Show diagnostics for line" },
      j = { ":Lspsaga diagnostic_jump_next<CR>", "Jump to next diagnostic" },
      k = { ":Lspsaga diagnostic_jump_prev<CR>", "Jump to last diagnostic " },

      h = { ":Lspsaga lsp_finder<CR>", "LSP finder", bufnr = nil },
    },
    K = { ":Lspsaga hover_doc<CR>", "Show docs" },

    ["<C-u>"] = {
      function()
        require("lspsaga.action").smart_scroll_with_saga(-1, "<C-u>")
      end,
      "Smart scroll up",
      bufnr = nil,
    },
    ["<C-d>"] = {
      function()
        require("lspsaga.action").smart_scroll_with_saga(1, "<C-d>")
      end,
      "Smart scroll down",
      bufnr = nil,
    },
  }

  wk.register(keymaps, {
    mode = "n",
    buffer = bufnr,
    silent = true,
    noremap = true,
  })

  wk.register({
    g = {
      name = "LSP",
      x = { ":<c-u>Lspsaga range_code_action<CR>", "Show code actions over range" },
    },
  }, {
    mode = "x",
    silent = true,
    noremap = true,
  })
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
