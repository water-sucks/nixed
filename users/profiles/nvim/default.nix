{ lib, self, config, pkgs, ... }:

let
  sources = pkgs.callPackage _sources/generated.nix { };

  plug = source: pkgs.vimUtils.buildVimPluginFrom2Nix {
    inherit (source) pname version src;
  };

  tree-sitter = pkgs.tree-sitter.override {
    extraGrammars = {
      tree-sitter-nix = lib.importJSON ./tree-sitter-nix.json;
    };
  };

  grammars = tree-sitter.allGrammars;
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
      nodePackages.bash-language-server
      rust-analyzer
      elixir_ls
      sumneko-lua-language-server
      rnix-lsp

      # null-ls sources
      asmfmt
      black
      codespell
      cppcheck
      deadnix
      editorconfig-checker
      gofumpt
      nixpkgs-fmt
      gitlint
      mypy
      nodePackages.alex
      nodePackages.prettier
      nodePackages.markdownlint-cli
      proselint
      python3Packages.flake8
      rustfmt
      shellcheck
      shellharden
      shfmt
      statix
      stylua
      vim-vint
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
      ${builtins.readFile ./lua/terminal.lua}

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
      (plug sources.lsp-format-nvim)
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
      editorconfig-nvim

      # UNIX/Git commands
      vim-eunuch
      gitsigns-nvim
      diffview-nvim

      # Appearance/Theming
      (nvim-treesitter.withPlugins (plugins: grammars))
      (plug sources.hachiko)
      lush-nvim
      (plug sources.windline-nvim)
      bufferline-nvim
      nvim-web-devicons
      (plug sources.circles-nvim)
      (plug sources.zen-mode-nvim) # Couldn't find it, but it probably exists somewhere
      twilight-nvim
      indent-blankline-nvim

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

