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
    (plugin "L3MON4D3" "LuaSnip")
    (plugin "rafamadriz" "friendly-snippets")
    (plugin "onsails" "lspkind-nvim")
    (plugin "stevearc" "conform.nvim")

    # Specialized windows
    (plugin "stevearc" "dressing.nvim")
    (plugin "nvim-telescope" "telescope.nvim")
    (plugin "folke" "trouble.nvim")
    (plugin "MunifTanjim" "nui.nvim")
    (plugin "j-hui" "fidget.nvim")

    # Text editing assistance/annotations
    (plugin "NMAC427" "guess-indent.nvim")
    (plugin "echasnovski" "mini.surround")
    (plugin "tpope" "vim-repeat")
    (plugin "windwp" "nvim-autopairs")
    (plugin "sQVe" "sort.nvim")
    (plugin "echasnovski" "mini.move")
    (plugin "ggandor" "leap.nvim")
    (plugin "Allaman" "emoji.nvim")
    (plugin "2kabhishek" "nerdy.nvim")
    (plugin "bullets-vim" "bullets.vim")
    (plugin "nvimdev" "template.nvim")

    # UNIX/Git commands
    (plugin "tpope" "vim-eunuch")
    (plugin "lewis6991" "gitsigns.nvim")
    (plugin "sindrets" "diffview.nvim")
    (plugin "nanotee" "zoxide.vim")
    (plugin "stevearc" "oil.nvim")

    # Appearance/Theming
    # Treesitter queries will be synced with the nixpkgs treesitter input
    (fetch "nvim-treesitter" "nvim-treesitter-textobjects" {
      branch = "main";
    })
    (plugin "windwp" "nvim-ts-autotag")
    (plugin "JoosepAlviste" "nvim-ts-context-commentstring")
    (plugin "water-sucks" "darkrose.nvim")
    (plugin "jackplus-xyz" "binary.nvim")
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
    (plugin "kevinhwang91" "nvim-ufo")
    (plugin "kevinhwang91" "promise-async")
    (plugin "folke" "todo-comments.nvim")
    (fetch "MeanderingProgrammer" "render-markdown.nvim" {
      rev = "f2bdf9f866671456f7a6119cc94501048d9d172c";
    })

    # Special Neovim sauce
    (plugin "IogaMaster" "neocord")
    (plugin "alec-gibson" "nvim-tetris")
    (plugin "Eandrju" "cellular-automaton.nvim")
    (plugin "folke" "which-key.nvim")
    (plugin "tamton-aquib" "duck.nvim")
    (plugin "samjwill" "nvim-unception")
    (plugin "folke" "noice.nvim")
    (plugin "stevearc" "overseer.nvim")
    (plugin "m4xshen" "hardtime.nvim")

    # Debugging
    (plugin "mfussenegger" "nvim-dap")
    (plugin "rcarriga" "nvim-dap-ui")
    (plugin "nvim-neotest" "nvim-nio")
    (plugin "theHamsta" "nvim-dap-virtual-text")
    (plugin "leoluz" "nvim-dap-go")
    (plugin "mfussenegger" "nvim-dap-python")

    # Language-specific plugins
    (plugin "folke" "lazydev.nvim")
    (plugin "akinsho" "flutter-tools.nvim")
    (plugin "mfussenegger" "nvim-jdtls")
    (plugin "lervag" "vimtex")
    (plugin "kaarmu" "typst.vim")
    (plugin "seblj" "roslyn.nvim")
  ]
