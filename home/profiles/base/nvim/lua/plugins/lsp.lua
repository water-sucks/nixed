local lspconfig_spec = use("neovim/nvim-lspconfig", {
  config = function()
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local wk = require("which-key")

        wk.add({
          {
            buffer = args.buf,
            { "gD", vim.lsp.buf.declaration, desc = "Go to declaration" },
            { "gd", vim.lsp.buf.definition, desc = "Go to definition" },
            { "gh", vim.lsp.buf.hover, desc = "Hover docs" },
          },
        })
      end,
    })

    vim.diagnostic.config({
      virtual_text = {
        prefix = "●",
        spacing = 1,
      },

      virtual_lines = false,

      signs = true,
      underline = true,
      update_in_insert = true,
    })

    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN] = "",
          [vim.diagnostic.severity.INFO] = "",
          [vim.diagnostic.severity.HINT] = "",
        },
      },
    })

    local server_configs = {
      astro = {},
      bashls = {},
      ccls = {},
      cssls = {},
      denols = {
        root_markers = { "deno.json", "deno.jsonc" },
        single_file_support = false,
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
        filetypes = { "markdown", "toml", "typst" },
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
      sourcekit = {
        filetypes = { "swift", "objcpp", "objc" },
        capabilities = {
          workspace = {
            didChangeWatchedFiles = {
              dynamicRegistration = true,
            },
          },
        },
      },
      superhtml = {},
      svelte = {},
      terraformls = {},
      tinymist = {
        settings = {
          formatterMode = "typstyle",
          exportPdf = "onSave",
        },
      },
      ts_ls = {
        root_markers = { "package.json" },
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
  end,
})

local blink_spec = use("saghen/blink.cmp", {
  lazy = false, -- lazy loading handled internally
  dependencies = {
    use("rafamadriz/friendly-snippets"),
  },

  opts = {
    enabled = function()
      return not vim.tbl_contains({ "DressingInput" }, vim.bo.filetype)
        and vim.bo.buftype ~= "prompt"
        and vim.b.completion ~= false
    end,
    keymap = {
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },
      ["<CR>"] = { "accept", "fallback" },

      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },

      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },

      ["<C-p>"] = { "snippet_forward", "fallback" },
      ["<C-n>"] = { "snippet_backward", "fallback" },

      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
    },
    completion = {
      accept = {
        create_undo_point = true,
        auto_brackets = {
          enabled = true,
          kind_resolution = {
            enabled = true,
            blocked_filetypes = { "typescriptreact", "javascriptreact", "vue" },
          },
          semantic_token_resolution = {
            enabled = true,
            timeout_ms = 200,
          },
        },
      },
      list = {
        selection = {
          preselect = function(ctx)
            return ctx.mode ~= "cmdline"
          end,
        },
      },
      menu = {
        draw = {
          columns = {
            { "kind_icon" },
            { "label", "label_description", gap = 1 },
            { "kind" },
          },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
      },
      ghost_text = { enabled = true },
    },
    sources = {
      default = { "lazydev", "lsp", "path", "snippets", "buffer" },
      providers = {
        lazydev = {
          name = "LazyDev",
          fallbacks = { "lsp" },
          module = "lazydev.integrations.blink",
        },
      },
    },
    signature = { enabled = true },
  },
})

local conform_spec = use("stevearc/conform.nvim", {
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>p",
      function()
        require("conform").format()
      end,
      mode = "n",
      desc = "Format buffer",
    },
  },
  opts = {
    default_format_opts = {
      lsp_format = "fallback",
    },
    format_on_save = {
      lsp_format = "fallback",
      timeout_ms = 500,
    },
    formatters = {
      prettier = function()
        local prettier_cmd = vim.fn.exepath("prettier")
        if prettier_cmd == "" then
          prettier_cmd = vim.fn.exepath("prettier-default-config")
        end
        return {
          command = prettier_cmd,
        }
      end,
    },
    formatters_by_ft = {
      astro = { "prettier" },
      asm = { "asmfmt" },
      css = { "prettier" },
      sql = { "sqlfluff" },
      graphql = { "prettier" },
      handlebars = { "prettier" },
      html = { "prettier" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      json = { "prettier" },
      jsonc = { "prettier" },
      less = { "prettier" },
      lua = { "stylua" },
      markdown = { "prettier" },
      ["markdown.mdx"] = { "prettier" },
      python = { "black" },
      scss = { "prettier" },
      sh = { "shfmt", "shellharden" },
      tex = { "latexindent" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      vue = { "prettier" },
      yaml = { "prettier" },
    },
  },
})

local nvim_lint_spec = use("mfussenegger/nvim-lint", {
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      c = { "cppcheck" },
      cpp = { "cppcheck" },
      elixir = { "credo" },
      gitcommit = { "gitlint" },
      nix = { "statix" },
      python = { "mypy" },
      tex = { "chktex" },
      rust = { "clippy" },
      ["*"] = { "editorconfig-checker" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
})

return {
  lspconfig_spec,
  blink_spec,
  conform_spec,
  nvim_lint_spec,
}
