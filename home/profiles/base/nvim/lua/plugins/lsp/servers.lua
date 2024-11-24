local lsp = require("lspconfig")
local on_attach = require("plugins.lsp.on_attach")

-- Rust/Flutter/LTeX are configured in
-- their respective plugins.
local servers = {
  "astro",
  "bashls",
  "ccls",
  "cssls",
  "denols",
  "efm",
  "elixirls",
  "emmet_ls",
  "eslint",
  "gopls",
  "golangci_lint_ls",
  "graphql",
  "html",
  "ltex",
  "lua_ls",
  "nickel_ls",
  "nixd",
  "prismals",
  "pyright",
  "ruff_lsp",
  "r_language_server",
  "svelte",
  "superhtml",
  "terraformls",
  "tinymist",
  "ts_ls",
  "vala_ls",
  "zls",
}

local efm_sources = {
  formatters = {
    asmfmt = { formatCommand = "asmfmt", formatStdin = true },
    black = {
      formatCommand = "black --no-color -q -",
      formatStdin = true,
      rootMarkers = { "pyproject.toml", "requirements.txt", ".git" },
    },
    latexindent = { formatCommand = "latexindent -l -", formatStdin = true },
    prettier = {
      formatCanRange = true,
      formatCommand = "prettier --stdin --stdin-filepath ${INPUT} ${--range-start:charStart} "
        .. "${--range-end:charEnd} ${--tab-width:tabSize} ${--use-tabs:!insertSpaces}",
      formatStdin = true,
      rootMarkers = {
        ".prettierrc",
        ".prettierrc.json",
        ".prettierrc.js",
        ".prettierrc.yml",
        ".prettierrc.yaml",
        ".prettierrc.json5",
        ".prettierrc.mjs",
        ".prettierrc.cjs",
        ".prettierrc.toml",
        "prettier.config.js",
        "prettier.config.cjs",
        "package.json",
      },
    },
    shfmt = { formatCommand = "shfmt -filename ${INPUT} -", formatStdin = true },
    shellharden = { formatCommand = "shellharden --transform ''", formatStdin = true },
    stylua = {
      formatCanRange = true,
      formatCommand = "stylua --color Never ${--range-start:charStart} ${--range-end:charEnd} -",
      formatStdin = true,
    },
  },

  diagnostics = {
    chktex = {
      lintCommand = "chktex -v0 -q",
      lintFormats = { "%f:%l:%c:%m" },
      lintIgnoreExitCode = true,
      lintStdin = true,
      prefix = "chktex",
    },
    cppcheck = {
      lintCommand = "cppcheck --quiet --force --enable=warning,style,performance,portability --error-exitcode=1 ${INPUT}",
      lintFormats = { "%f:%l:%c: %trror: %m", "%f:%l:%c: %tarning: %m", "%f:%l:%c: %tote: %m" },
      rootMarkers = { "CmakeLists.txt", "compile_commands.json", ".git" },
      lintStdin = false,
      prefix = "cppcheck",
    },
    credo = {
      lintCategoryMap = { R = "N", D = "I", F = "E", W = "W" },
      lintCommand = "mix credo suggest --format=flycheck --read-from-stdin ${INPUT}",
      lintFormats = { "%f:%l:%c: %t: %m", "%f:%l: %t: %m" },
      lintStdin = true,
      prefix = "credo",
      rootMarkers = { "mix.lock", "mix.exs" },
    },
    editorconfig_checker = {
      lintCategoryMap = { ["	"] = "N" },
      lintCommand = "editorconfig-checker -no-color",
      lintFormats = { "%t%l: %m" },
      lintStdin = false,
      prefix = "editorconfig",
      rootMarkers = { ".editorconfig" },
    },
    gitlint = {
      lintCommand = "gitlint",
      lintFormats = { '%l: %m: "%r"', "%l: %m" },
      lintStdin = true,
      prefix = "gitlint",
    },
    statix = {
      lintCommand = "statix check --stdin --format=errfmt",
      lintStdin = true,
      prefix = "statix",
    },
  },
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
        format = {
          enable = false,
        },
      },
    },
  },
  gopls = {
    settings = {
      gopls = {
        gofumpt = true,
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
  denols = {
    root_dir = lsp.util.root_pattern("deno.json", "deno.jsonc"),
    single_file_support = false,
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
  nixd = {
    -- Use a .nixd.json file as a source for configuration.
    -- This is mostly important for this repo.
    on_init = function(client)
      local path = client.workspace_folders[1].name

      local nixd_json = io.open(path .. ".nixd.json")
      if nixd_json == nil then
        return
      end

      local contents = nixd_json:read()
      nixd_json:close()

      local overriden_settings = vim.json.decode(contents)

      client.config.settings = vim.tbl_deep_extend("force", client.config.settings, overriden_settings)
    end,
    cmd = { "nixd" },
    settings = {
      nixd = {
        formatting = {
          command = vim.env.USE_NIXFMT == "1" and { "nixfmt" } or { "alejandra" },
        },
      },
    },
  },
  tinymist = {
    settings = {
      formatterMode = "typstyle",
      exportPdf = "onSave",
    },
  },
  ts_ls = {
    root_dir = lsp.util.root_pattern("package.json"),
    single_file_support = false,
  },
  efm = {
    init_options = { documentFormatting = true },
    on_attach = function(client, bufnr)
      on_attach(client, bufnr)
      -- ccls is UTF-32 only, and that gives me a SUPER annoying error message.
      -- I need to change the encoding prevent this warning madness.
      local filetypes_to_change = require("lspconfig").ccls.document_config.default_config.filetypes
      local current_filetype = vim.bo.filetype
      for _, filetype in ipairs(filetypes_to_change) do
        if filetype == current_filetype then
          client.offset_encoding = "utf-32"
        end
      end
    end,
    settings = {
      rootMarkers = { ".git/" },
      languages = {
        astro = { efm_sources.formatters.prettier },
        asm = { efm_sources.formatters.asmfmt },
        c = { efm_sources.diagnostics.cppcheck },
        cpp = { efm_sources.diagnostics.cppcheck },
        css = { efm_sources.formatters.prettier },
        elixir = { efm_sources.diagnostics.credo },
        gitcommit = { efm_sources.diagnostics.gitlint },
        graphql = { efm_sources.formatters.prettier },
        handlebars = { efm_sources.formatters.prettier },
        html = { efm_sources.formatters.prettier },
        javascript = { efm_sources.formatters.prettier },
        javascriptreact = { efm_sources.formatters.prettier },
        json = { efm_sources.formatters.prettier },
        jsonc = { efm_sources.formatters.prettier },
        less = { efm_sources.formatters.prettier },
        lua = { efm_sources.formatters.stylua },
        markdown = {
          efm_sources.diagnostics.markdownlint,
          efm_sources.formatters.prettier,
        },
        ["markdown.mdx"] = { efm_sources.formatters.prettier },
        nix = { efm_sources.diagnostics.statix },
        python = {
          efm_sources.diagnostics.mypy,
          efm_sources.formatters.black,
        },
        scss = { efm_sources.formatters.prettier },
        sh = {
          efm_sources.formatters.shfmt,
          efm_sources.formatters.shellharden,
        },
        tex = {
          efm_sources.diagnostics.chktex,
          efm_sources.formatters.latexindent,
        },
        typescript = { efm_sources.formatters.prettier },
        typescriptreact = { efm_sources.formatters.prettier },
        vue = { efm_sources.formatters.prettier },
        yaml = { efm_sources.formatters.prettier },
        ["="] = { efm_sources.diagnostics.editorconfig_checker },
      },
    },
  },
}

-- Prevent quickfix list from popping up when attempting to
-- format Zig files if there are errors
vim.g.zig_fmt_parse_errors = 0

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
