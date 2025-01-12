local lspconfig_spec = use("neovim/nvim-lspconfig", {
  config = function()
    for _, file in ipairs({ "servers", "handlers" }) do
      require("plugins.lsp." .. file)
    end
  end,
})

local fidget_spec = use("j-hui/fidget.nvim", {
  event = "BufRead",
  config = function()
    require("fidget").setup({
      filter = function(client, title)
        if
          (client == "null-ls" and title == "diagnostics")
          or title == "code_action"
          or title == "Checking document"
        then
          return false
        end
        return true
      end,
    })
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
            { "label", "label_description", gap = 1 },
            { "kind_icon", "kind" },
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
        require("conform").format({ async = true })
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
      sqlfluff = {
        command = "sqlfluff",
        args = {
          "fix",
          "--disable-progress-bar",
          "-f",
          "-n",
          "-",
        },
        stdin = true,
      },
    },
    formatters_by_ft = {
      sql = { "sqlfluff" },
    },
  },
})

return {
  lspconfig_spec,
  blink_spec,
  fidget_spec,
  conform_spec,
}
