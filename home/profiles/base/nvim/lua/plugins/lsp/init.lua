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
    highlight = {
      use_nvim_cmp_as_default = true,
    },
    sources = {
      completion = {
        enabled_providers = { "lsp", "path", "snippets", "buffer", "lazydev" },
      },
      providers = {
        lsp = { fallback_for = { "lazydev" } },
        lazydev = { name = "LazyDev", module = "lazydev.integrations.blink" },
      },
    },
    accept = { auto_brackets = { enabled = true } },
    trigger = { signature_help = { enabled = true } },
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
  -- cmp_spec,
  blink_spec,
  fidget_spec,
  conform_spec,
}
