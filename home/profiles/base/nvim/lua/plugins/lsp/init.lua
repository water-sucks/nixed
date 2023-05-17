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

local cmp_spec = use("hrsh7th/nvim-cmp", {
  event = { "InsertEnter", "CmdlineEnter" },
  config = function()
    require("plugins.lsp.cmp")
  end,
  dependencies = {
    use("L3MON4D3/LuaSnip"),
    use("hrsh7th/cmp-nvim-lsp"),
    use("hrsh7th/cmp-path"),
    use("hrsh7th/cmp-omni"),
    use("hrsh7th/cmp-calc"),
    use("hrsh7th/cmp-buffer"),
    use("hrsh7th/cmp-cmdline"),
    use("rcarriga/cmp-dap"),
    use("saadparwaiz1/cmp_luasnip"),
    use("rafamadriz/friendly-snippets"),
    use("iurimateus/luasnip-latex-snippets.nvim", {
      ft = "tex",
    }),
    use("onsails/lspkind-nvim"),
  },
})

local lsp_signature_spec = use("ray-x/lsp_signature.nvim", {
  dependencies = { use("neovim/nvim-lspconfig") },
  config = function()
    -- For showing completion for function entry instead of using noice
    require("lsp_signature").setup({
      hint_enable = true,
      hint_prefix = " ", -- OMG Debian??
      handler_opts = { border = "single" },
      max_width = 80,
      toggle_key = "<C-k>",
      toggle_key_flip_floatwin_setting = true,
    })
  end,
})

local null_ls_spec = use("jose-elias-alvarez/null-ls.nvim", {
  event = "CursorHold",
  config = function()
    require("plugins.lsp.null-ls")
  end,
})

return {
  lspconfig_spec,
  cmp_spec,
  lsp_signature_spec,
  null_ls_spec,
  fidget_spec,
}
