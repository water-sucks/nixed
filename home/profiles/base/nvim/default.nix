{
  pkgs,
  lib,
  ...
}: let
  sources = pkgs.callPackage _sources/generated.nix {};

  treesitter = pkgs.tree-sitter.override {
    extraGrammars = with lib; filterAttrs (n: _: hasPrefix "tree-sitter-" n) sources;
  };

  generatedPluginSources = with lib;
    mapAttrs'
    (n:
      nameValuePair
      (removePrefix "'plugin-" (removeSuffix "'" n)))
    (filterAttrs (n: _: hasPrefix "'plugin-" n)
      sources);

  buildPlugin = source:
    pkgs.vimUtils.buildVimPluginFrom2Nix {
      inherit (source) pname version src;
    };

  generatedPlugins = with lib;
    mapAttrs (_: buildPlugin) generatedPluginSources;

  plugins =
    generatedPlugins
    // {
      # Add plugins you want synced with nixpkgs here.
    };
in {
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
      emmet-ls
      nodePackages.bash-language-server
      nodePackages.graphql-language-service-cli
      nodePackages.vscode-langservers-extracted
      sumneko-lua-language-server
      nil

      # null-ls sources
      alejandra
      asmfmt
      black
      cppcheck
      deadnix
      editorconfig-checker
      gofumpt
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
      bc
      cowsay
    ];
  };

  xdg.configFile = {
    "nvim/init.lua".source = ./init.lua;
    "nvim/lua".source = ./lua;
    "nvim/parser".source = "${treesitter.withPlugins (_: treesitter.allGrammars)}";
  };

  xdg.dataFile =
    {
      "nvim/vscode-lldb".source = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb";
    }
    // (with lib;
      mapAttrs' (n: v:
        nameValuePair "nvim/plugins/${n}" {
          source = "${v}";
        })
      plugins);
}
