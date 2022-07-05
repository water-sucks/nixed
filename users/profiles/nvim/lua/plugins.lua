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
    use("nathom/filetype.nvim")
    use({
      "dstein64/vim-startuptime",
      event = "CursorHold",
    })

    -- Editor tooling
    use({
      "neovim/nvim-lspconfig",
      config = function()
        require("config.lsp")
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
      event = "CursorHold",
      requires = { "lukas-reineke/lsp-format.nvim" },
      config = function()
        require("config.lsp.null-ls")
      end,
    })
    use({
      "ray-x/lsp_signature.nvim",
      event = "CursorHold",
      config = function()
        require("config.lsp.signature")
      end,
    })

    -- Completion
    use({
      {
        "Shougo/ddc.vim",
        event = "InsertEnter",
        config = function()
          require("config.lsp.ddc")
        end,
      },

      { "vim-denops/denops.vim", event = "CursorHold" },

      -- Menu
      { "Shougo/pum.vim", event = "CursorHold" },
      { "tani/ddc-fuzzy", event = "CursorHold" },
      { "matsui54/denops-popup-preview.vim", event = "CursorHold" },

      -- Sources
      { "Shougo/ddc-omni", event = "CursorHold" },
      { "Shougo/ddc-around", event = "CursorHold" },
      { "Shougo/ddc-nvim-lsp", event = "CursorHold" },
      { "matsui54/ddc-buffer", event = "CursorHold" },

      -- Snippets
      { "hrsh7th/vim-vsnip", event = "CursorHold" },
      { "rafamadriz/friendly-snippets", event = "CursorHold" },
      { "hrsh7th/vim-vsnip-integ", event = "CursorHold" },
    })

    -- Specialized windows
    use({
      "stevearc/dressing.nvim",
      event = "CursorHold",
      config = function()
        require("dressing").setup()
      end,
    })
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
    use({
      "weilbith/nvim-code-action-menu",
      cmd = "CodeActionMenu",
    })

    -- Text editing assistance/annotations
    use({
      "tpope/vim-sleuth",
      event = "BufRead",
    })
    use({
      "tpope/vim-surround",
      event = "CursorHold",
      config = function()
        require("config.surround")
      end,
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
      event = "CursorHold",
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
        -- event = "BufRead",
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
      requires = "kyazdani42/nvim-web-devicons",
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
      "kosayoda/nvim-lightbulb",
      event = "BufRead",
      config = function()
        require("config.lightbulb")
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
        require("presence"):setup({})
      end,
    })
    use({
      "alec-gibson/nvim-tetris",
      cmd = "Tetris",
    })
    use({
      {
        "nvim-neorg/neorg",
        after = "nvim-treesitter",
        config = function()
          require("config.neorg")
        end,
      },
      {
        "nvim-neorg/neorg-telescope",
        after = { "neorg", "telescope.nvim" },
      },
    })
    use({
      "folke/which-key.nvim",
      config = function()
        require("config.which_key")
      end,
    })

    -- Debugging
    use({
      "mfussenegger/nvim-dap",
      event = "CursorHold",
    })
    use({
      "rcarriga/nvim-dap-ui",
      after = "nvim-dap",
      config = function()
        require("config.dap.ui")
      end,
    })
    use({
      "theHamsta/nvim-dap-virtual-text",
      event = "CursorHold",
      config = function()
        require("nvim-dap-virtual-text").setup()
      end,
    })

    -- Language-specific plugins
    use({
      "akinsho/flutter-tools.nvim",
      after = "nvim-lspconfig",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("config.flutter")
      end,
      ft = "dart",
    })
    use({
      "simrat39/rust-tools.nvim",
      after = "nvim-lspconfig",
      config = function()
        require("config.rust")
      end,
      ft = "rust",
    })
    use({
      "lervag/vimtex",
      after = "nvim-lspconfig",
      config = function()
        require("config.tex")
      end,
      ft = "tex",
    })
    use({
      "barreiroleo/ltex_extra.nvim",
      module = "ltex_extra",
      ft = "tex",
    })
  end,

  config = {
    display = {
      open_fn = require("packer.util").float,
    },
  },
})
