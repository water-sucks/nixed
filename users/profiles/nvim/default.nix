{ self, config, pkgs, lib, ... }:

let
  sources = pkgs.callPackage _sources/generated.nix { };

  buildTreesitterGrammar = pkgs.callPackage ./grammars.nix { };

  tree-sitter-norg = buildTreesitterGrammar {
    language = "norg";
    source = sources.tree-sitter-norg.src;
    inherit (pkgs.tree-sitter) version;
  };

  tree-sitter-norg-meta = buildTreesitterGrammar {
    language = "norg-meta";
    source = sources.tree-sitter-norg-meta.src;
    inherit (pkgs.tree-sitter) version;
  };

  grammars = { inherit tree-sitter-norg tree-sitter-norg-meta; };

  tree-sitter = pkgs.tree-sitter // {
    allGrammars = (lib.lists.remove pkgs.tree-sitter.builtGrammars.tree-sitter-norg pkgs.tree-sitter.allGrammars) ++ builtins.attrValues grammars;
    builtGrammars = pkgs.tree-sitter.builtGrammars // grammars;
  };
in
{
  home.packages = with pkgs; [
    neovim-remote
  ];

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
      gopls
      ltex-ls
      nodePackages.bash-language-server
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
      shellcheck
      shellharden
      shfmt
      statix
      stylua
      vim-vint

      # Other stuff
      bc
      cowsay
    ];
    extraConfig = ''
      lua << EOF
      ${builtins.readFile ./init.lua}
      EOF
    '';
  };

  xdg.configFile = {
    "nvim/lua" = {
      source = ./lua;
      recursive = true;
    };
    "nvim/lua/config" = {
      source = ./lua/config;
      recursive = true;
    };
    "nvim/parser" = {
      source = "${tree-sitter.withPlugins(_: tree-sitter.allGrammars)}";
      recursive = true;
    };
  };
}
