local ok, packer = pcall(require, "packer")

if not ok then
  return
end

packer.init({
  auto_clean = true,
  compile_on_sync = true,
  display = {
    working_sym = "ﲊ",
    error_sym = "✗",
    done_sym = "﫟",
    removed_sym = "",
    moved_sym = "",
  },
})

packer.startup({
  function(use)
    -- Vitals
    use("wbthomason/packer.nvim")
    use("lewis6991/impatient.nvim")
    use("nvim-lua/plenary.nvim")
    use("dstein64/vim-startuptime")
    use("nathom/filetype.nvim")

    -- Editor tooling
    use({
      "neovim/nvim-lspconfig",
      config = function()
        require("config.lsp")
      end,
    })
    use({
      {
        "ms-jpq/coq_nvim",
        branch = "coq",
        run = function()
          if vim.fn.empty(vim.fn.glob(vim.fn.stdpath("data") .. "/coqrt")) > 0 then
            require("coq").deps()
          end
        end,
      },
      {
        "ms-jpq/coq.artifacts",
        branch = "artifacts",
      },
      {
        "ms-jpq/coq.thirdparty",
        branch = "3p",
      },
    })
    use({
      "glepnir/lspsaga.nvim",
      event = "CursorHold",
      config = function()
        require("config.saga")
      end,
    })
    use({
      "lukas-reineke/lsp-format.nvim",
      config = function()
        require("lsp-format").setup({})
        vim.cmd([[cabbrev wq execute "Format sync" <bar> wq]])
      end,
    })
    use({
      "jose-elias-alvarez/null-ls.nvim",
      requires = { "lukas-reineke/lsp-format.nvim" },
      config = function()
        require("config.lsp.null-ls")
      end,
    })

    -- Specialized windows
    use({
      "kyazdani42/nvim-tree.lua",
      event = "CursorHold",
      requires = {
        "kyazdani42/nvim-web-devicons",
        "projekt0n/circles.nvim",
      },
      config = function()
        require("config.nvim-tree")
      end,
    })
    use({
      "nvim-telescope/telescope.nvim",
      event = "CursorHold",
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
        require("config.telescope")
      end,
    })
    use({
      "sidebar-nvim/sidebar.nvim",
      event = "CursorHold",
      config = function()
        require("config.sidebar")
      end,
    })
    use({
      "folke/trouble.nvim",
      event = "CursorHold",
      config = function()
        require("config.trouble")
      end,
    })
    use({
      "voldikss/vim-floaterm",
      event = "CursorHold",
      config = function()
        require("config.floaterm")
      end,
    })

    -- Text editing assistance/annotations
    use({
      "tpope/vim-sleuth",
      event = "BufRead",
    })
    use({
      "tpope/vim-surround",
      event = "CursorHold",
    })
    use({
      "tpope/vim-repeat",
      event = "CursorHold",
    })
    use({
      "gpanders/editorconfig.nvim",
      event = "BufRead",
    })
    use({
      "Pocco81/HighStr.nvim",
      event = "CursorHold",
      config = function()
        require("config.highstr")
      end,
    })
    use({
      "numToStr/Comment.nvim",
      event = "CursorHold",
      config = function()
        require("config.comment")
      end,
    })
    use({
      "windwp/nvim-autopairs",
      event = "BufEnter",
      config = function()
        require("config.autopairs")
      end,
    })
    use({
      "Pocco81/AutoSave.nvim",
      event = "CursorHold",
      config = function()
        require("config.autosave")
      end,
    })
    use({
      "monaqa/dial.nvim",
      event = "CursorHold",
      config = function()
        require("config.dial")
      end,
    })

    -- UNIX/Git commands
    use({
      "tpope/vim-eunuch",
      event = "CmdlineEnter",
    })
    use({
      "lewis6991/gitsigns.nvim",
      event = "BufRead",
      config = function()
        require("config.gitsigns")
      end,
    })
    use({
      "sindrets/diffview.nvim",
      event = "CursorHold",
      config = function()
        require("config.diffview")
      end,
    })

    -- Appearance/Theming
    use({
      {
        "nvim-treesitter/nvim-treesitter",
        event = "BufRead",
        config = function()
          require("config.treesitter")
        end,
      },
      { "nvim-treesitter/playground", after = "nvim-treesitter" },
      { "nvim-treesitter/nvim-treesitter-textobjects", after = "nvim-treesitter" },
      { "nvim-treesitter/nvim-treesitter-refactor", after = "nvim-treesitter" },
      { "windwp/nvim-ts-autotag", after = "nvim-treesitter" },
      { "JoosepAlviste/nvim-ts-context-commentstring", after = "nvim-treesitter" },
    })
    use({
      "projekt0n/github-nvim-theme",
      config = function()
        require("config.colors")
      end,
    })
    use({
      "nvim-lualine/lualine.nvim",
      after = "github-nvim-theme",
      event = "BufEnter",
      config = function()
        require("config.lualine")
      end,
    })
    use({
      "akinsho/bufferline.nvim",
      event = "BufEnter",
      config = function()
        require("config.bufferline")
      end,
    })
    use({
      "tiagovla/scope.nvim",
      after = "bufferline.nvim",
      config = function()
        require("scope").setup()
      end,
    })
    use({
      "kyazdani42/nvim-web-devicons",
      config = function()
        require("nvim-web-devicons").setup({})
      end,
    })
    use({
      "projekt0n/circles.nvim",
      requires = { "kyazdani42/nvim-web-devicons" },
      config = function()
        require("circles").setup({})
      end,
    })
    use({
      "folke/zen-mode.nvim",
      event = "CursorHold",
      requires = "twilight.nvim",
      config = function()
        require("config.zen")
      end,
    })
    use({
      "folke/twilight.nvim",
      event = "CursorHold",
      config = function()
        require("config.twilight")
      end,
    })
    use({
      "lukas-reineke/indent-blankline.nvim",
      event = "BufRead",
      config = function()
        require("config.indent-blankline")
      end,
    })
    use({
      "norcalli/nvim-colorizer.lua",
      event = "CursorHold",
      config = function()
        require("colorizer").setup()
      end,
    })

    -- Special Neovim sauce
    use({
      "andweeb/presence.nvim",
      config = function()
        require("config.presence")
      end,
    })
    use({
      "alec-gibson/nvim-tetris",
      cmd = "Tetris",
    })
    use({
      "nvim-neorg/neorg",
      after = { "nvim-treesitter", "telescope.nvim" },
      requires = {
        "nvim-neorg/neorg-telescope",
      },
      config = function()
        require("config.neorg")
      end,
    })
    use({
      "folke/which-key.nvim",
      config = function()
        require("config.which-key")
      end,
    })

    -- Debugging
    use({
      "rcarriga/nvim-dap-ui",
      requires = "mfussenegger/nvim-dap",
      config = function()
        require("config.dap.ui")
      end,
    })
    use({
      "theHamsta/nvim-dap-virtual-text",
      config = function()
        require("nvim-dap-virtual-text").setup()
      end,
    })

    -- Language-specific plugins
    use({
      "akinsho/flutter-tools.nvim",
      event = "BufRead",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("config.flutter")
      end,
    })
    use({
      "simrat39/rust-tools.nvim",
      event = "BufRead",
      config = function()
        require("rust-tools").setup({})
      end,
    })
    use({
      "lervag/vimtex",
      event = "BufRead",
      config = function()
        require("config.tex")
      end,
      ft = "tex",
    })
  end,

  config = {
    display = {
      open_fn = require("packer.util").float,
    },
  },
})
