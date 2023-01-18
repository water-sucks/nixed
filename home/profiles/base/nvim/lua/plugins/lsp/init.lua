local use = require("utils").use

local lspconfig_spec = use("neovim/nvim-lspconfig", {
  config = function()
    for _, file in ipairs({ "servers", "handlers" }) do
      require("plugins.lsp." .. file)
    end
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

local lsp_format_spec = use("lukas-reineke/lsp-format.nvim", {
  config = function()
    require("lsp-format").setup({})
    vim.cmd([[cabbrev wq execute "Format sync" <bar> wq]])
  end,
})

local null_ls_spec = use("jose-elias-alvarez/null-ls.nvim", {
  event = "CursorHold",
  dependencies = { lsp_format_spec },
  config = function()
    require("plugins.lsp.null-ls")
  end,
})

return {
  lspconfig_spec,
  cmp_spec,
  null_ls_spec,
  lsp_format_spec,
}