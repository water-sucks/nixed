{ self, config, pkgs, lib, ... }:

let
  sources = pkgs.callPackage _sources/generated.nix { };

  treesitter = pkgs.tree-sitter.override {
    extraGrammars = {
      tree-sitter-dart = {
        src = pkgs.fetchFromGitHub {
          repo = "tree-sitter-dart";
          owner = "UserNobody14";
          rev = "f95876f0ed3ef207bbd3c5c41987bc2e9cecfc97";
          sha256 = "sha256-8bBsKmkJw8BPdK6sk7i+GwqbaIsWKNrpbkekX94ZSkU=";
        };
      };

      tree-sitter-norg = {
        inherit (sources.tree-sitter-norg) src;
      };
      tree-sitter-norg-meta = {
        inherit (sources.tree-sitter-norg-meta) src;
      };
    };
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
      nodePackages.graphql-language-service-cli
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
      python3Packages.flake8
      shellcheck
      shellharden
      shfmt
      statix
      stylua
      vim-vint

      # DAP servers
      delve

      # Other stuff
      deno
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
      source = "${treesitter.withPlugins(_: treesitter.allGrammars)}";
      recursive = true;
    };
  };
}
