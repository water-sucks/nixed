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
      "ms-jpq/coq_nvim",
      branch = "coq",
      run = function()
        if vim.fn.empty(vim.fn.glob(vim.fn.stdpath("data") .. "/coqrt")) > 0 then
          require("coq").deps()
        end
      end,
    })
    use({ "ms-jpq/coq.artifacts", branch = "artifacts" })
    use({ "ms-jpq/coq.thirdparty", branch = "3p" })
    use({
      "tami5/lspsaga.nvim",
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
        require("config.null-ls")
      end,
    })

    -- Specialized windows
    use({
      "kyazdani42/nvim-tree.lua",
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
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
        require("config.telescope")
      end,
    })
    use({
      "sidebar-nvim/sidebar.nvim",
      config = function()
        require("config.sidebar")
      end,
    })
    use({
      "folke/trouble.nvim",
      config = function()
        require("trouble").setup({})
      end,
    })
    use("voldikss/vim-floaterm")

    -- Text editing assistance/annotations
    use("tpope/vim-sleuth")
    use("tpope/vim-surround")
    use("tpope/vim-repeat")
    use("gpanders/editorconfig.nvim")
    use({
      "Pocco81/HighStr.nvim",
      config = function()
        require("config.highstr")
      end,
    })
    use({
      "numToStr/Comment.nvim",
      config = function()
        require("config.comment")
      end,
    })
    use({
      "windwp/nvim-autopairs",
      config = function()
        require("config.autopairs")
      end,
    })
    use({
      "Pocco81/AutoSave.nvim",
      config = function()
        require("config.autosave")
      end,
    })
    use({
      "monaqa/dial.nvim",
      config = function()
        require("config.dial")
      end,
    })

    -- UNIX/Git commands
    use("tpope/vim-eunuch")
    use({
      "lewis6991/gitsigns.nvim",
      config = function()
        require("config.gitsigns")
      end,
    })
    use({
      "sindrets/diffview.nvim",
      config = function()
        require("diffview").setup({})
      end,
    })

    -- Appearance/Theming
    use({
      "nvim-treesitter/nvim-treesitter",
      config = function()
        require("config.treesitter")
      end,
    })
    use("nvim-treesitter/playground")
    use({
      "projekt0n/github-nvim-theme",
      config = function()
        require("config.colors")
      end,
    })
    use({
      "nvim-lualine/lualine.nvim",
      config = function()
        require("config.lualine")
      end,
    })
    use({
      "akinsho/bufferline.nvim",
      config = function()
        require("config.bufferline")
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
      requires = "twilight.nvim",
      config = function()
        require("config.zen")
      end,
    })
    use({
      "folke/twilight.nvim",
      config = function()
        require("config.twilight")
      end,
    })
    use({
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("config.indent-blankline")
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

    -- Language-specific plugins
    use({
      "akinsho/flutter-tools.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("config.flutter")
      end,
    })
    use({
      "simrat39/rust-tools.nvim",
      config = function()
        require("rust-tools").setup({})
      end,
    })
    use({
      "lervag/vimtex",
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

-- add neorg
-- mapper
