{ self, config, pkgs, ... }:

let
  sources = pkgs.callPackage _sources/generated.nix { };

  plug = source: pkgs.vimUtils.buildVimPluginFrom2Nix {
    inherit (source) pname version src;
  };
in
{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    withPython3 = true;
    withRuby = false;
    withNodeJs = false;

    extraPackages = with pkgs; [
      # Language servers
      pyright
      ccls
      flutter
      gopls
      # Where GraphQL LSP? Package it!
      nodePackages.bash-language-server
      rust-analyzer
      elixir_ls
      elmPackages.elm-language-server
      ocamlPackages.ocaml-lsp
      sumneko-lua-language-server
      rnix-lsp
      asm-lsp

      # null-ls sources
      asmfmt
      black
      deadnix
      elmPackages.elm-format
      gofumpt
      nixpkgs-fmt
      # Package prettierd
      rustfmt
      shellharden
      shfmt
      stylua
      # Credo included with mix deps
      cppcheck
      editorconfig-checker
      python3Packages.flake8
      gitlint
      nodePackages.prettier
      nodePackages.markdownlint-cli
      proselint
      shellcheck
      statix
      vim-vint
      nodePackages.write-good
    ];

    extraConfig = ''
      set shortmess=I
      colorscheme hachiko

      let g:did_load_filetypes = 1

      lua << EOF
      -- General
      ${builtins.readFile ./lua/options.lua}
      ${builtins.readFile ./lua/functions.lua}
      ${builtins.readFile ./lua/keymappings.lua}

      -- Completion/Linters/LSP support/Snippets
      ${builtins.readFile ./lua/lsp.lua}
      ${builtins.readFile ./lua/treesitter.lua}

      -- Cool specialized windows
      ${builtins.readFile ./lua/nvim-tree.lua}
      ${builtins.readFile ./lua/telescope.lua}
      ${builtins.readFile ./lua/sidebar.lua}
      ${builtins.readFile ./lua/trouble.lua}
      ${builtins.readFile ./lua/floaterm.lua}

      -- Text editing assistance/annotations
      ${builtins.readFile ./lua/renamer.lua}
      ${builtins.readFile ./lua/searchbox.lua}
      ${builtins.readFile ./lua/comment.lua}
      ${builtins.readFile ./lua/autopairs.lua}

      -- UNIX/Git commands
      ${builtins.readFile ./lua/gitsigns.lua}
      ${builtins.readFile ./lua/diffview.lua}

      -- Appearance
      ${builtins.readFile ./lua/indent-blankline.lua}
      ${builtins.readFile ./lua/circles.lua}
      ${builtins.readFile ./lua/windline.lua}
      ${builtins.readFile ./lua/bufferline.lua}
      ${builtins.readFile ./lua/zen.lua}
      ${builtins.readFile ./lua/pandoc.lua}
      EOF
    '';

    plugins = with pkgs.vimPlugins; [
      # Vitals
      (plug sources.filetype-nvim)
      plenary-nvim
      vim-startuptime

      # Completion/Linters/LSP support/Snippets
      nvim-lspconfig
      (plug sources.coq-nvim)
      (plug sources.coq-artifacts)
      (plug sources.coq-3p)
      null-ls-nvim
      (plug sources.navigator-lua)
      (plug sources.guihua-lua)
      (plug sources.lsp-signature-nvim)

      # Specialized windows
      nvim-tree-lua
      telescope-nvim
      (plug sources.sidebar-nvim)
      (plug sources.focus-nvim)
      trouble-nvim
      (plug sources.nui-nvim)
      vim-floaterm

      # Text editing assistance/annotations
      vim-surround
      (plug sources.renamer-nvim)
      (plug sources.searchbox-nvim)
      (plug sources.highstr-nvim)
      comment-nvim
      nvim-autopairs
      (plug sources.autosave-nvim)
      vim-sleuth

      # UNIX/Git commands
      vim-eunuch
      gitsigns-nvim
      diffview-nvim

      # Appearance/Theming
      (nvim-treesitter.withPlugins (plugins: pkgs.tree-sitter.allGrammars))
      (plug sources.hachiko)
      lush-nvim
      (plug sources.windline-nvim)
      bufferline-nvim
      nvim-web-devicons
      (plug sources.circles-nvim)
      (plug sources.zen-mode-nvim) # Couldn't find it, but it probably exists somewhere
      twilight-nvim
      indent-blankline-nvim
      # nvim-lightbulb

      # Special Neovim sauce
      presence-nvim
      (plug sources.tetris)

      # Language-specific plugins
      (plug sources.flutter-tools-nvim)
      rust-tools-nvim
      nvim-jdtls
    ];
  };
}

