{ self, lib, pkgs, ... }:

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
    ];

    extraConfig = ''
      " let g:dig_load_filetypes = 1

      lua << EOF
      ${builtins.readFile ./lua/options.lua}
      ${builtins.readFile ./lua/functions.lua}
      ${builtins.readFile ./lua/keymappings.lua}
      ${builtins.readFile ./lua/lsp.lua}
      ${builtins.readFile ./lua/treesitter.lua}
      ${builtins.readFile ./lua/nvim-tree.lua}
      ${builtins.readFile ./lua/indent-blankline.lua}
      ${builtins.readFile ./lua/circles.lua}
      ${builtins.readFile ./lua/windline.lua}
      ${builtins.readFile ./lua/gitsigns.lua}
      ${builtins.readFile ./lua/searchbox.lua}
      ${builtins.readFile ./lua/sidebar.lua}
      ${builtins.readFile ./lua/telescope.lua}
      ${builtins.readFile ./lua/neorg.lua}
      EOF

      colorscheme hachiko
    '';

    plugins = with pkgs.vimPlugins; [
      # Vitals
      impatient-nvim
      (plug sources.filetype-nvim)
      plenary-nvim
      vim-startuptime

      # Completion/Linters/LSP support/Snippets
      nvim-lspconfig
      (plug sources.coq-nvim)
      (plug sources.coq-artifacts)
      (plug sources.coq-3p)

      # Specialized windows
      nvim-tree-lua
      telescope-nvim
      (plug sources.sidebar-nvim)
      (plug sources.focus-nvim)
      trouble-nvim
      (plug sources.nui-nvim)

      # Text editing assistance/annotations
      vim-surround
      (plug sources.iswap-nvim)
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
      nvim-ts-rainbow
      (plug sources.hachiko)
      lush-nvim
      (plug sources.windline-nvim)
      bufferline-nvim
      nvim-web-devicons
      (plug sources.circles-nvim)
      (plug sources.zen-mode-nvim) # Couldn't find it, but it probably exists somewhere
      twilight-nvim
      indent-blankline-nvim
      nvim-lightbulb

      # Special Neovim sauce
      nvim-notify
      lightspeed-nvim
      (plug sources.nvim-mapper)
      presence-nvim
      neorg

      # Language-specific plugins
      (plug sources.flutter-tools-nvim)
      rust-tools-nvim
      nvim-jdtls
    ];
  };

  xdg.configFile."nvim/parser/lua.so".source = "${pkgs.tree-sitter.builtGrammars.tree-sitter-lua}/parser";
}
