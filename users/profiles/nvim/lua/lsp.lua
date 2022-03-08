local map = vim.api.nvim_set_keymap
local navigator = require("navigator")

vim.g.coq_settings = {
  auto_start = "shut-up",
  xdg = true,
}
require("coq")

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

navigator.setup({
  debug = false,
  width = 0.75,
  height = 0.3,
  preview_height = 0.35,
  border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },

  default_mapping = true,
  treesitter_analysis = true,
  lsp_signature_help = false,
  signature_help_cfg = nil,
  icons = {
    icons = true,

    code_action_icon = " ",
    code_lens_action_icon = " ",

    diagnostic_head = "",
    diagnostic_err = "裂",
    diagnostic_warn = "",
    diagnostic_info = "",
    diagnostic_hint = "",
    diagnostic_head_severity_1 = "",
    diagnostic_head_severity_2 = "",
    diagnostic_head_severity_3 = "",
    diagnostic_head_description = "﬍",
    diagnostic_virtual_text = "",
    diagnostic_file = "",

    value_changed = "",
    value_definition = "",

    match_kinds = {
      var = " ",
      method = "ƒ ",
      ["function"] = " ",
      parameter = "  ",
      associated = "魯 ",
      namespace = " ",
      type = " ",
      field = " ",
    },

    treesitter_defult = "", -- Spelled wrong until upstream
  },

  lsp_installer = false,
  lsp = {
    code_action = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
    code_lens_action = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
    format_on_save = true,
    disable_format_cap = { "sumneko_lua", "elixirls", "gopls", "rnix" },
    diagnostic_virtual_text = true,
    diagnostic_update_in_insert = true,
    disply_diagnostic_qf = false, -- Spelled wrong upstrean

    -- elixirls = {
    --   cmd = { elixir_ls_path() },
    --   dialyzerEnabled = false,
    -- }, -- Set up separately for now until spelling error is fixed
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
    servers = {
      "pyright",
      "ccls",
      "dartls",
      "gopls",
      "bashls",
      "elmls",
      "ocamllsp",
      "rnix",
      "asm_lsp",
    },
    disable_lsp = {
      "rust_analyzer",
      "angularls",
      "tsserver",
      "flow",
      "julials",
      "jdtls",
      "html",
      "jedi_language_server",
      "solargraph",
      "clangd",
      "denols",
      "dotls",
      "nimls",
      "intelephense",
      "vuels",
      "phpactor",
      "pylsp",
      "omnisharp",
      "r_language_server",
      "svelte",
      "clojure_lsp",
      "sourcekit",
      "hls",
    },
  },
})

require("rust-tools").setup({})

require("lspconfig").elixirls.setup({
  cmd = { elixir_ls_path() },
  dialyzerEnabled = false,
})

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
    null_ls.builtins.formatting.mix,
    null_ls.builtins.formatting.rustfmt,
    null_ls.builtins.formatting.shellharden,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.stylua,

    null_ls.builtins.diagnostics.cppcheck,
    null_ls.builtins.diagnostics.credo,
    -- null_ls.builtins.diagnostics.editorconfig_checker,
    null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.diagnostics.gitlint,
    null_ls.builtins.diagnostics.markdownlint,
    null_ls.builtins.diagnostics.deadnix,
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
