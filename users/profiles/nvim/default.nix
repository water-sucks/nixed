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

    extraPackages = with pkgs; [

    ];

    extraConfig = ''
      lua << EOF
        ${builtins.readFile ./lua/options.lua}
        ${builtins.readFile ./lua/functions.lua}
        ${builtins.readFile ./lua/keymappings.lua}
      EOF
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

      # UNIX/Git commands
      vim-eunuch
      gitsigns-nvim
      diffview-nvim

      # Appearance/Theming
      nvim-treesitter
      wal-vim
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

      # Language-specific plugins
      (plug sources.flutter-tools-nvim)
      rust-tools-nvim
      nvim-jdtls
    ];
  };
}
