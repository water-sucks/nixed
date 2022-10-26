local ok, packer = pcall(require, "packer")
if not ok then
  return
end

local function generated(name)
  local plugin_name = name:match("[^/]+$")
  local plugin_dir = vim.fn.stdpath("data") .. "/plugins/" .. plugin_name
  if vim.fn.isdirectory(plugin_dir) > 0 then
    return plugin_dir
  end
  return name
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
    use(generated("wbthomason/packer.nvim"))
    use(generated("lewis6991/impatient.nvim"))
    use(generated("nvim-lua/plenary.nvim"))
    use(generated("nathom/filetype.nvim"))
    use({
      generated("dstein64/vim-startuptime"),
      event = "CursorHold",
    })

    -- Editor tooling
    use({
      generated("neovim/nvim-lspconfig"),
      config = function()
        require("config.lsp")
      end,
    })
    use({
      generated("lukas-reineke/lsp-format.nvim"),
      config = function()
        require("lsp-format").setup({})
        vim.cmd([[cabbrev wq execute "Format sync" <bar> wq]])
      end,
    })
    use({
      generated("jose-elias-alvarez/null-ls.nvim"),
      event = "CursorHold",
      requires = { "lukas-reineke/lsp-format.nvim" },
      config = function()
        require("config.lsp.null-ls")
      end,
    })
    use({
      generated("ray-x/lsp_signature.nvim"),
      event = "CursorHold",
      config = function()
        require("config.lsp.signature")
      end,
    })
    use({
      generated("nanotee/zoxide.vim"),
      event = "CursorHold",
    })

    -- Completion
    use({
      {
        generated("ms-jpq/coq_nvim"),
        branch = "coq",
        run = function()
          if not vim.fn.isdirectory(vim.fn.stdpath("data") .. "/coqrt") then
            require("coq").deps()
          end
        end,
      },
      { generated("ms-jpq/coq.artifacts") },
      { generated("ms-jpq/coq.thirdparty") },
    })

    -- Specialized windows
    use({
      generated("stevearc/dressing.nvim"),
      event = "CursorHold",
      config = function()
        require("dressing").setup()
      end,
    })
    use({
      generated("kyazdani42/nvim-tree.lua"),
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
      generated("nvim-telescope/telescope.nvim"),
      event = "CursorHold",
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
        require("config.telescope")
      end,
    })
    use({
      generated("sidebar-nvim/sidebar.nvim"),
      event = "CursorHold",
      config = function()
        require("config.sidebar")
      end,
    })
    use({
      generated("folke/trouble.nvim"),
      event = "CursorHold",
      config = function()
        require("config.trouble")
      end,
    })
    use({
      generated("voldikss/vim-floaterm"),
      event = "CursorHold",
      config = function()
        require("config.floaterm")
      end,
    })
    use({
      generated("weilbith/nvim-code-action-menu"),
      cmd = "CodeActionMenu",
    })
    use({
      generated("stevearc/aerial.nvim"),
      event = "CursorHold",
      config = function()
        require("config.aerial")
      end,
    })

    -- Text editing assistance/annotations
    use({
      generated("tpope/vim-sleuth"),
      event = "BufRead",
    })
    use({
      generated("tpope/vim-surround"),
      event = "CursorHold",
      config = function()
        require("config.surround")
      end,
    })
    use({
      generated("tpope/vim-repeat"),
      event = "CursorHold",
    })
    use({
      generated("gpanders/editorconfig.nvim"),
      event = "BufRead",
    })
    use({
      generated("Pocco81/HighStr.nvim"),
      event = "CursorHold",
      config = function()
        require("config.highstr")
      end,
    })
    use({
      generated("numToStr/Comment.nvim"),
      event = "CursorHold",
      config = function()
        require("config.comment")
      end,
    })
    use({
      generated("windwp/nvim-autopairs"),
      event = "CursorHold",
      config = function()
        require("config.autopairs")
      end,
    })
    use({
      generated("Pocco81/auto-save.nvim"),
      event = "CursorHold",
      config = function()
        require("config.autosave")
      end,
    })
    use({
      generated("monaqa/dial.nvim"),
      event = "CursorHold",
      config = function()
        require("config.dial")
      end,
    })
    use({
      generated("sQVe/sort.nvim"),
      event = "CursorHold",
      config = function()
        require("config.sort")
      end,
    })
    use({
      generated("booperlv/nvim-gomove"),
      event = "CursorHold",
      config = function()
        require("config.go-move")
      end,
    })
    use({
      generated("David-Kunz/treesitter-unit"),
      event = "CursorHold",
      config = function()
        require("config.treesitter_unit")
      end,
    })
    use({
      generated("ggandor/leap.nvim"),
      event = "CursorHold",
      config = function()
        require("leap").set_default_keymaps()
      end,
    })

    -- UNIX/Git commands
    use({
      generated("tpope/vim-eunuch"),
      event = "CmdlineEnter",
    })
    use({
      generated("lewis6991/gitsigns.nvim"),
      event = "BufRead",
      config = function()
        require("config.gitsigns")
      end,
    })
    use({
      generated("sindrets/diffview.nvim"),
      event = "CursorHold",
      config = function()
        require("config.diffview")
      end,
    })

    -- Appearance/Theming
    use({
      {
        generated("nvim-treesitter/nvim-treesitter"),
        -- event = "BufRead",
        config = function()
          require("config.treesitter")
        end,
      },
      { generated("nvim-treesitter/playground"), after = "nvim-treesitter" },
      { generated("nvim-treesitter/nvim-treesitter-textobjects"), after = "nvim-treesitter" },
      { generated("nvim-treesitter/nvim-treesitter-refactor"), after = "nvim-treesitter" },
      { generated("windwp/nvim-ts-autotag"), after = "nvim-treesitter" },
      { generated("JoosepAlviste/nvim-ts-context-commentstring"), after = "nvim-treesitter" },
    })
    use({
      generated("projekt0n/github-nvim-theme"),
      config = function()
        require("config.colors")
      end,
    })
    use({
      generated("nvim-lualine/lualine.nvim"),
      event = "BufEnter",
      config = function()
        require("config.lualine")
      end,
    })
    use({
      generated("akinsho/bufferline.nvim"),
      event = "BufEnter",
      config = function()
        require("config.bufferline")
      end,
    })
    use({
      generated("tiagovla/scope.nvim"),
      after = "bufferline.nvim",
      config = function()
        require("scope").setup()
      end,
    })
    use({
      generated("kyazdani42/nvim-web-devicons"),
      config = function()
        require("nvim-web-devicons").setup({})
      end,
    })
    use({
      generated("projekt0n/circles.nvim"),
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("circles").setup({})
      end,
    })
    use({
      generated("folke/zen-mode.nvim"),
      event = "CursorHold",
      requires = "twilight.nvim",
      config = function()
        require("config.zen")
      end,
    })
    use({
      generated("folke/twilight.nvim"),
      event = "CursorHold",
      config = function()
        require("config.twilight")
      end,
    })
    use({
      generated("lukas-reineke/indent-blankline.nvim"),
      event = "BufRead",
      config = function()
        require("config.indent-blankline")
      end,
    })
    use({
      generated("kosayoda/nvim-lightbulb"),
      event = "BufRead",
      config = function()
        require("config.lightbulb")
      end,
    })
    use({
      generated("norcalli/nvim-colorizer.lua"),
      event = "CursorHold",
      config = function()
        require("colorizer").setup()
      end,
    })

    -- Special Neovim sauce
    use({
      generated("andweeb/presence.nvim"),
      config = function()
        require("presence"):setup({})
      end,
    })
    use({
      generated("alec-gibson/nvim-tetris"),
      cmd = "Tetris",
    })
    use({
      {
        generated("nvim-neorg/neorg"),
        after = "nvim-treesitter",
        config = function()
          require("config.neorg")
        end,
      },
      {
        generated("nvim-neorg/neorg-telescope"),
        after = { "neorg", "telescope.nvim" },
      },
    })
    use({
      generated("folke/which-key.nvim"),
      config = function()
        require("config.which_key")
      end,
    })
    use({
      generated("ahmedkhalf/project.nvim"),
      after = "telescope.nvim",
      event = "CursorHold",
      config = function()
        require("config.project")
      end,
    })

    -- Debugging
    use({
      generated("mfussenegger/nvim-dap"),
      event = "CursorHold",
      config = function()
        require("config.dap")
      end,
    })
    use({
      generated("rcarriga/nvim-dap-ui"),
      after = "nvim-dap",
      config = function()
        require("config.dap.ui")
      end,
    })
    use({
      generated("theHamsta/nvim-dap-virtual-text"),
      event = "CursorHold",
      config = function()
        require("nvim-dap-virtual-text").setup()
      end,
    })
    use({
      generated("jbyuki/one-small-step-for-vimkind"),
      after = "nvim-dap",
      config = function()
        require("config.dap.nlua")
      end,
      ft = "lua",
    })
    use({
      generated("leoluz/nvim-dap-go"),
      after = "nvim-dap",
      config = function()
        require("dap-go").setup()
      end,
      ft = "go",
    })
    use({
      generated("mfussenegger/nvim-dap-python"),
      after = "nvim-dap",
      config = function()
        require("config.dap.python")
      end,
      ft = "python",
    })

    -- Language-specific plugins
    use({
      generated("folke/neodev.nvim"),
      module = "neodev",
      ft = "lua",
    })
    use({
      generated("akinsho/flutter-tools.nvim"),
      after = "nvim-lspconfig",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("config.flutter")
      end,
      ft = "dart",
    })
    use({
      generated("simrat39/rust-tools.nvim"),
      after = "nvim-lspconfig",
      config = function()
        require("config.rust")
      end,
      ft = "rust",
    })
    use({
      generated("lervag/vimtex"),
      after = "nvim-lspconfig",
      config = function()
        require("config.tex")
      end,
      ft = "tex",
    })
    use({
      generated("barreiroleo/ltex_extra.nvim"),
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
