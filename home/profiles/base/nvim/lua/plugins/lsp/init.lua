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

    require("plugins.lsp.servers")
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

return {
  lspconfig_spec,
  blink_spec,
  conform_spec,
}
