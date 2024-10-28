let
  plugin = owner: repo: fetch owner repo {};

  fetch = owner: repo: {
    rev ? null,
    branch ? null,
    isPlugin ? true, # Disable for Treesitter grammars
  }: let
    pname =
      if isPlugin
      then "plugin-${builtins.replaceStrings ["."] ["-"] repo}"
      else repo;
    repository = "${owner}/${repo}";
    src =
      if rev != null
      then {
        "src.manual" = rev;
      }
      else if branch != null
      then {
        "src.git" = "https://github.com/${repository}";
        "src.branch" = branch;
      }
      else {
        "src.git" = "https://github.com/${repository}";
      };
  in {
    name = pname;
    value =
      src
      // {
        "fetch.github" = "${repository}";
        passthru = {
          pretty-name = repo;
        };
      };
  };
in
  builtins.listToAttrs [
    # Vitals
    (plugin "folke" "lazy.nvim")
    (plugin "nvim-lua" "plenary.nvim")

    # Editor tooling
    (plugin "neovim" "nvim-lspconfig")
    (plugin "nanotee" "zoxide.vim")
    (plugin "hrsh7th" "nvim-cmp")
    (plugin "hrsh7th" "cmp-nvim-lsp")
    (plugin "hrsh7th" "cmp-path")
    (plugin "hrsh7th" "cmp-omni")
    (plugin "hrsh7th" "cmp-calc")
    (plugin "hrsh7th" "cmp-buffer")
    (plugin "hrsh7th" "cmp-cmdline")
    (plugin "rcarriga" "cmp-dap")
    (plugin "L3MON4D3" "LuaSnip")
    (plugin "saadparwaiz1" "cmp_luasnip")
    (plugin "rafamadriz" "friendly-snippets")
    (plugin "onsails" "lspkind-nvim")
    (plugin "iurimateus" "luasnip-latex-snippets.nvim")
    (plugin "stevearc" "conform.nvim")

    # Specialized windows
    (plugin "stevearc" "dressing.nvim")
    (plugin "nvim-tree" "nvim-tree.lua")
    (plugin "nvim-telescope" "telescope.nvim")
    (plugin "folke" "trouble.nvim")
    (plugin "numToStr" "FTerm.nvim")
    (plugin "MunifTanjim" "nui.nvim")
    # Temporary until fidget.nvim is rewritten
    (fetch "j-hui" "fidget.nvim" {branch = "legacy";})

    # Text editing assistance/annotations
    (plugin "NMAC427" "guess-indent.nvim")
    (plugin "echasnovski" "mini.surround")
    (plugin "tpope" "vim-repeat")
    (plugin "numToStr" "Comment.nvim")
    (plugin "windwp" "nvim-autopairs")
    (plugin "Pocco81" "auto-save.nvim")
    (plugin "monaqa" "dial.nvim")
    (plugin "sQVe" "sort.nvim")
    (plugin "echasnovski" "mini.move")
    (plugin "ggandor" "leap.nvim")

    # UNIX/Git commands
    (plugin "tpope" "vim-eunuch")
    (plugin "lewis6991" "gitsigns.nvim")
    (plugin "sindrets" "diffview.nvim")

    # Appearance/Theming
    # Treesitter queries will be synced with the nixpkgs treesitter input
    # (plugin "nvim-treesitter" "nvim-treesitter")
    # (plugin "nvim-treesitter" "nvim-treesitter-textobjects")
    # (plugin "nvim-treesitter" "nvim-treesitter-refactor")
    (plugin "nvim-treesitter" "playground")
    (plugin "windwp" "nvim-ts-autotag")
    (plugin "JoosepAlviste" "nvim-ts-context-commentstring")
    (plugin "water-sucks" "darkrose.nvim")
    (plugin "nvim-lualine" "lualine.nvim")
    (plugin "akinsho" "bufferline.nvim")
    (plugin "tiagovla" "scope.nvim")
    (plugin "nvim-tree" "nvim-web-devicons")
    (plugin "folke" "zen-mode.nvim")
    (plugin "folke" "twilight.nvim")
    (plugin "lukas-reineke" "indent-blankline.nvim")
    (plugin "kosayoda" "nvim-lightbulb")
    (plugin "NvChad" "nvim-colorizer.lua")
    (plugin "m00qek" "baleia.nvim")
    (plugin "rktjmp" "highlight-current-n.nvim")
    (plugin "kevinhwang91" "nvim-ufo")
    (plugin "kevinhwang91" "promise-async")
    (plugin "folke" "todo-comments.nvim")

    # Special Neovim sauce
    (plugin "IogaMaster" "neocord")
    (plugin "alec-gibson" "nvim-tetris")
    (plugin "Eandrju" "cellular-automaton.nvim")
    (plugin "nvim-neorg" "neorg")
    (plugin "vhyrro" "luarocks.nvim")
    (plugin "nvim-neorg" "neorg-telescope")
    (plugin "pysan3" "neorg-templates")
    (plugin "folke" "which-key.nvim")
    (plugin "ahmedkhalf" "project.nvim")
    (plugin "tamton-aquib" "duck.nvim")
    (plugin "samjwill" "nvim-unception")
    (plugin "folke" "noice.nvim")
    (plugin "stevearc" "overseer.nvim")

    # Debugging
    (plugin "mfussenegger" "nvim-dap")
    (plugin "rcarriga" "nvim-dap-ui")
    (plugin "nvim-neotest" "nvim-nio")
    (plugin "theHamsta" "nvim-dap-virtual-text")
    (plugin "jbyuki" "one-small-step-for-vimkind")
    (plugin "leoluz" "nvim-dap-go")
    (plugin "mfussenegger" "nvim-dap-python")

    # Language-specific plugins
    (plugin "folke" "lazydev.nvim")
    (plugin "akinsho" "flutter-tools.nvim")
    (plugin "simrat39" "rust-tools.nvim")
    (plugin "mfussenegger" "nvim-jdtls")
    (plugin "lervag" "vimtex")
    (plugin "barreiroleo" "ltex_extra.nvim")
    (plugin "kaarmu" "typst.vim")

    (fetch "nvim-neorg" "tree-sitter-norg" {
      branch = "dev";
      isPlugin = false;
    })
    (fetch "nvim-neorg" "tree-sitter-norg-meta" {isPlugin = false;})
    (fetch "IndianBoy42" "tree-sitter-just" {isPlugin = false;})
  ]
