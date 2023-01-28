{
  inputs,
  pkgs,
  lib,
  ...
}: let
  sources = pkgs.callPackage _sources/generated.nix {};

  # Grammar builder function
  buildGrammar = pkgs.callPackage "${inputs.nixpkgs}/pkgs/development/tools/parsing/tree-sitter/grammar.nix" {};

  # Build grammars that were fetched using nvfetcher
  generatedGrammars = with lib;
    mapAttrs (n: v:
      buildGrammar {
        language = removePrefix "tree-sitter-" n;
        inherit (v) version src;
      }) (filterAttrs (n: _: hasPrefix "tree-sitter-" n) sources);

  # Attrset of grammars built using nvim-treesitter's lockfile
  grammars' = with lib;
    genAttrs' pkgs.vimPlugins.nvim-treesitter.withAllGrammars.passthru.dependencies
    (v: (replaceStrings ["nvim-treesitter-"] ["tree-sitter-"] (removeSuffix "-grammar" v.name)));
  grammars = grammars' // generatedGrammars;

  parserDir = with lib;
    pkgs.linkFarm
    "treesitter-parsers"
    (mapAttrsToList
      (n: v: let
        name = "${replaceStrings ["-"] ["_"] (removePrefix "tree-sitter-" n)}.so";
      in {
        inherit name;
        path =
          # nvim-treesitter's grammars are inside a "parser" directory, which sucks
          if hasPrefix "nvim-treesitter" v.name
          then "${v}/parser/${name}"
          else "${v}/parser";
      })
      grammars);

  buildPlugin = source:
    pkgs.vimUtils.buildVimPluginFrom2Nix {
      inherit (source) pname version src;
    };

  generatedPluginSources = with lib;
    mapAttrs'
    (n:
      nameValuePair
      (removePrefix "'plugin-" (removeSuffix "'" n)))
    (filterAttrs (n: _: hasPrefix "'plugin-" n)
      sources);

  generatedPlugins = with lib;
    mapAttrs (_: buildPlugin) generatedPluginSources;

  plugins =
    generatedPlugins
    // {
      # Add plugins you want synced with nixpkgs here.
      inherit (pkgs.vimPlugins) nvim-treesitter nvim-treesitter-textobjects nvim-treesitter-refactor;
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
    ];
  };

  xdg.configFile = {
    "nvim/init.lua".source = ./init.lua;
    "nvim/lua".source = ./lua;
    "nvim/parser".source = "${parserDir}";
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
