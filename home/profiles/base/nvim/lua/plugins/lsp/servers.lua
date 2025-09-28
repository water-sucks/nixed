local root_pattern = require("lspconfig/util").root_pattern

local prettier = vim.fn.exepath("prettier")
if prettier == "" then
  prettier = vim.fn.exepath("prettier-default-config")
end

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
      formatCommand = prettier
        .. " --stdin --stdin-filepath ${INPUT}"
        .. " ${--range-start:charStart} ${--range-end:charEnd}",
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
  astro = {},
  bashls = {},
  ccls = {},
  cssls = {},
  denols = {
    root_dir = root_pattern("deno.json", "deno.jsonc"),
    single_file_support = false,
  },
  efm = {
    init_options = { documentFormatting = true },
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
  elixirls = {
    cmd = { "elixir-ls" },
    dialyzerEnabled = false,
  },
  emmet_ls = {},
  eslint = {},
  fsautocomplete = {},
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
  golangci_lint_ls = {},
  harper_ls = {
    settings = {
      ["harper-ls"] = {
        userDictPath = vim.fn.stdpath("data") .. "/harper-dict.txt",
        linters = {
          AvoidCurses = false,
          ToDoHyphen = false, -- I love my TODO comments
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
  nickel_ls = {},
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
  pyright = {},
  r_language_server = {},
  ruff = {},
  rust_analyzer = {
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          buildScripts = {
            enable = true,
          },
        },
        procMacro = {
          enable = true,
        },
      },
    },
  },
  svelte = {},
  superhtml = {},
  terraformls = {},
  tinymist = {
    settings = {
      formatterMode = "typstyle",
      exportPdf = "onSave",
    },
  },
  ts_ls = {
    root_dir = root_pattern("package.json"),
    single_file_support = false,
  },
  vala_ls = {},
  zls = {},
}

-- Prevent quickfix list from popping up when attempting to
-- format Zig files if there are errors
vim.g.zig_fmt_parse_errors = 0

for server, cfg in pairs(server_configs) do
  cfg.capabilities = require("blink.cmp").get_lsp_capabilities(cfg.capabilities or {})
  vim.lsp.config[server] = cfg
  vim.lsp.enable(server)
end
