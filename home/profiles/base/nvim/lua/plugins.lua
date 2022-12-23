-- Find either the Nix-generated version of the plugin if it is
-- found, or fall back to fetching it remotely if it is not.
-- Don't mistake this for "use" from packer.nvim!
local function use(name, spec)
  spec = spec or {}
  local plugin_name = name:match("[^/]+$")
  local plugin_dir = vim.fn.stdpath("data") .. "/plugins/" .. plugin_name
  if vim.fn.isdirectory(plugin_dir) > 0 then
    spec["dir"] = plugin_dir
  else
    spec[1] = name
  end
  return spec
end

return {
  -- Vitals
  use("folke/lazy.nvim"),
  use("nvim-lua/plenary.nvim"),
  use("nathom/filetype.nvim"),
  use("dstein64/vim-startuptime", {
    cmd = "StartupTime",
  }),

  -- Editor tooling
  use("neovim/nvim-lspconfig", {
    event = "BufReadPre",
    config = function()
      require("config.lsp")
    end,
  }),
  use("jose-elias-alvarez/null-ls.nvim", {
    event = "CursorHold",
    dependencies = {
      use("lukas-reineke/lsp-format.nvim", {
        config = function()
          require("lsp-format").setup({})
          vim.cmd([[cabbrev wq execute "Format sync" <bar> wq]])
        end,
      }),
    },
    config = function()
      require("config.lsp.null-ls")
    end,
  }),
  use("ray-x/lsp_signature.nvim", {
    event = "CursorHold",
    config = function()
      require("config.lsp.signature")
    end,
  }),
  use("nanotee/zoxide.vim", {
    event = "CursorHold",
  }),

  -- Completion
  use("ms-jpq/coq_nvim", {
    event = "InsertEnter",
    dependencies = {
      use("ms-jpq/coq.artifacts"),
      use("ms-jpq/coq.thirdparty"),
    },
  }),

  -- Specialized windows
  use("stevearc/dressing.nvim", {
    event = "CursorHold",
    config = function()
      require("dressing").setup()
    end,
  }),
  use("nvim-telescope/telescope.nvim", {
    event = "CursorHold",
    config = function()
      require("config.telescope")
    end,
  }),
  use("SidOfc/carbon.nvim", {
    event = "CursorHold",
    config = function()
      require("config.carbon")
    end,
  }),
  use("folke/trouble.nvim", {
    event = "CursorHold",
    config = function()
      require("config.trouble")
    end,
  }),
  use("voldikss/vim-floaterm", {
    event = "CursorHold",
    config = function()
      require("config.floaterm")
    end,
  }),
  use("weilbith/nvim-code-action-menu", {
    cmd = "CodeActionMenu",
  }),

  -- Text editing assistance/annotations
  use("tpope/vim-sleuth", {
    event = "BufRead",
  }),
  use("tpope/vim-surround", {
    event = "CursorHold",
    config = function()
      require("config.surround")
    end,
  }),
  use("tpope/vim-repeat", {
    event = "CursorHold",
  }),
  use("gpanders/editorconfig.nvim", {
    event = "BufRead",
  }),
  use("numToStr/Comment.nvim", {
    event = "CursorHold",
    config = function()
      require("config.comment")
    end,
  }),
  use("windwp/nvim-autopairs", {
    event = "CursorHold",
    config = function()
      require("config.autopairs")
    end,
  }),
  use("Pocco81/auto-save.nvim", {
    event = "CursorHold",
    config = function()
      require("config.autosave")
    end,
  }),
  use("monaqa/dial.nvim", {
    event = "CursorHold",
    config = function()
      require("config.dial")
    end,
  }),
  use("sQVe/sort.nvim", {
    event = "CursorHold",
    config = function()
      require("config.sort")
    end,
  }),
  use("booperlv/nvim-gomove", {
    event = "CursorHold",
    config = function()
      require("config.go-move")
    end,
  }),
  use("ggandor/leap.nvim", {
    event = "CursorHold",
    config = function()
      require("leap").set_default_keymaps()
    end,
  }),

  -- UNIX/Git commands
  use("tpope/vim-eunuch", {
    event = "CmdlineEnter",
  }),
  use("lewis6991/gitsigns.nvim", {
    event = "BufRead",
    config = function()
      require("config.gitsigns")
    end,
  }),
  use("sindrets/diffview.nvim", {
    event = "CursorHold",
    config = function()
      require("config.diffview")
    end,
  }),

  -- Appearance/Theming
  use("nvim-treesitter/nvim-treesitter", {
    event = "BufReadPost",
    config = function()
      require("config.treesitter")
    end,
  }),
  use("nvim-treesitter/nvim-treesitter-textobjects", {
    dependencies = { use("nvim-treesitter/nvim-treesitter") },
  }),
  use("nvim-treesitter/nvim-treesitter-refactor", {
    dependencies = { use("nvim-treesitter/nvim-treesitter") },
  }),
  use("windwp/nvim-ts-autotag", {
    dependencies = { use("nvim-treesitter/nvim-treesitter") },
  }),
  use("JoosepAlviste/nvim-ts-context-commentstring", {
    dependencies = { use("nvim-treesitter/nvim-treesitter") },
  }),
  use("nvim-treesitter/playground", {
    dependencies = { use("nvim-treesitter/nvim-treesitter") },
  }),
  use("projekt0n/github-nvim-theme", {
    config = function()
      require("config.colors")
    end,
  }),
  use("nvim-lualine/lualine.nvim", {
    event = "BufEnter",
    config = function()
      require("config.lualine")
    end,
  }),
  use("akinsho/bufferline.nvim", {
    event = "BufEnter",
    config = function()
      require("config.bufferline")
    end,
  }),
  use("tiagovla/scope.nvim", {
    dependencies = { use("akinsho/bufferline.nvim") },
    config = function()
      require("scope").setup()
    end,
  }),
  use("kyazdani42/nvim-web-devicons", {
    config = function()
      require("nvim-web-devicons").setup({})
    end,
  }),
  use("projekt0n/circles.nvim", {
    dependencies = { use("kyazdani42/nvim-web-devicons") },
    config = function()
      require("circles").setup({})
    end,
  }),
  use("folke/zen-mode.nvim", {
    event = "CursorHold",
    dependencies = { use("twilight.nvim") },
    config = function()
      require("config.zen")
    end,
  }),
  use("folke/twilight.nvim", {
    event = "CursorHold",
    config = function()
      require("config.twilight")
    end,
  }),
  use("lukas-reineke/indent-blankline.nvim", {
    event = "BufRead",
    config = function()
      require("config.indent-blankline")
    end,
  }),
  use("kosayoda/nvim-lightbulb", {
    event = "BufRead",
    config = function()
      require("config.lightbulb")
    end,
  }),
  use("norcalli/nvim-colorizer.lua", {
    event = "CursorHold",
    config = function()
      require("colorizer").setup()
    end,
  }),
  use("gen740/SmoothCursor.nvim", {
    event = "CursorHold",
    config = function()
      require("config.cursor")
    end,
  }),

  -- Special Neovim sauce
  use("andweeb/presence.nvim", {
    config = function()
      require("presence"):setup({})
    end,
  }),
  use("alec-gibson/nvim-tetris", {
    cmd = "Tetris",
  }),
  use("nvim-neorg/neorg", {
    dependencies = {
      use("nvim-neorg/neorg-telescope"),
    },
    config = function()
      require("config.neorg")
    end,
    ft = "norg",
  }),
  use("folke/which-key.nvim", {
    config = function()
      require("config.which_key")
    end,
  }),
  use("ahmedkhalf/project.nvim", {
    dependencies = { use("nvim-telescope/telescope.nvim") },
    event = "CursorHold",
    config = function()
      require("config.project")
    end,
  }),
  use("tamton-aquib/duck.nvim", {
    event = "CursorHold",
    config = function()
      require("config.duck")
    end,
  }),

  -- Debugging
  use("mfussenegger/nvim-dap", {
    event = "CursorHold",
    config = function()
      require("config.dap")
    end,
  }),
  use("rcarriga/nvim-dap-ui", {
    dependencies = { use("mfussenegger/nvim-dap") },
    config = function()
      require("config.dap.ui")
    end,
  }),
  use("theHamsta/nvim-dap-virtual-text", {
    event = "CursorHold",
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  }),
  use("jbyuki/one-small-step-for-vimkind", {
    dependencies = { use("mfussenegger/nvim-dap") },
    config = function()
      require("config.dap.nlua")
    end,
    ft = "lua",
  }),
  use("leoluz/nvim-dap-go", {
    dependencies = { use("mfussenegger/nvim-dap") },
    config = function()
      require("dap-go").setup()
    end,
    ft = "go",
  }),
  use("mfussenegger/nvim-dap-python", {
    dependencies = { use("mfussenegger/nvim-dap") },
    config = function()
      require("config.dap.python")
    end,
    ft = "python",
  }),

  -- Language-specific plugins
  use("folke/neodev.nvim", {
    module = "neodev",
    ft = "lua",
  }),
  use("akinsho/flutter-tools.nvim", {
    dependencies = { use("nvim-lua/plenary.nvim") },
    config = function()
      require("config.flutter")
    end,
    ft = "dart",
  }),
  use("simrat39/rust-tools.nvim", {
    dependencies = { use("neovim/nvim-lspconfig") },
    config = function()
      require("config.rust")
    end,
    ft = "rust",
  }),
  use("lervag/vimtex", {
    dependencies = { use("neovim/nvim-lspconfig") },
    config = function()
      require("config.tex")
    end,
    ft = "tex",
  }),
  use("barreiroleo/ltex_extra.nvim", {
    module = "ltex_extra",
    ft = "tex",
  }),
}
