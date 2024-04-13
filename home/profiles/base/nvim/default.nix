{
  config,
  inputs,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux;

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
    (v: replaceStrings ["vimplugin-treesitter-grammar-"] ["tree-sitter-"] v.name);
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
          if hasPrefix "vimplugin-treesitter" v.name
          then "${v}/parser/${name}"
          else "${v}/parser";
      })
      grammars);

  buildPlugin = name: source:
    pkgs.vimUtils.buildVimPlugin {
      name = "${name}-${source.version}";
      namePrefix = ""; # Clear name prefix
      inherit (source) version src;
    };

  generatedPluginSources = with lib;
    mapAttrs'
    (_: v: nameValuePair v.pretty-name v)
    (filterAttrs (n: _: hasPrefix "plugin-" n) sources);

  generatedPlugins = with lib;
    mapAttrs buildPlugin generatedPluginSources;

  plugins =
    generatedPlugins
    // {
      # Add plugins you want synced with nixpkgs here, or override
      # existing ones from the generated plugin set.
      inherit (pkgs.vimPlugins) nvim-treesitter nvim-treesitter-textobjects nvim-treesitter-refactor;
      "fidget.nvim" = generatedPlugins."fidget.nvim".overrideAttrs (_: {
        patches = [./fidget.patch];
      });
      tree-sitter-just = buildPlugin "tree-sitter-just" sources.tree-sitter-just;
    };

  pluginDir = with lib;
    pkgs.linkFarm "nvim-plugins" (mapAttrsToList (n: v: {
        name = n;
        path = v;
      })
      plugins);

  prisma-ls = pkgs.nodePackages."@prisma/language-server";
in
  lib.mkMerge [
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
          ccls
          emmet-ls
          gopls
          jdt-language-server
          ltex-ls
          lua-language-server
          nil
          nodePackages."@astrojs/language-server"
          nodePackages.bash-language-server
          nodePackages.graphql-language-service-cli
          nodePackages.svelte-language-server
          nodePackages.typescript-language-server
          prisma-ls
          pyright
          ruff-lsp
          stable.nodePackages.vscode-langservers-extracted
          typst-lsp

          # efm-langserver sources
          alejandra
          asmfmt
          black
          cppcheck
          deadnix
          editorconfig-checker
          efm-langserver
          gitlint
          gofumpt
          nodePackages.prettier
          python3Packages.flake8
          shellcheck
          shellharden
          shfmt
          statix
          stylua

          # DAP servers
          delve
        ];
      };

      xdg.configFile = {
        "nvim/init.lua".source = ./init.lua;
        "nvim/lua".source = ./lua;
        "nvim/parser".source = "${parserDir}";
      };

      xdg.dataFile = lib.mkMerge [
        {
          "nvim/plugins".source = "${pluginDir}";
          # Workaround for not being able to package `java-debug` from source
          "nvim/java-debug/com.microsoft.java.debug.plugin.jar".source = pkgs.fetchurl {
            url = "https://repo1.maven.org/maven2/com/microsoft/java/com.microsoft.java.debug.plugin/0.49.0/com.microsoft.java.debug.plugin-0.49.0.jar";
            hash = "sha256-kI6JbMtxYkBp+O9QjeYq3QbwnqRBDYUZkWK+G+1vvec=";
          };
          # "nvim/java-debug".source = "${pkgs.java-debug}";
          "nvim/vscode-java-test".source = "${pkgs.vscode-extensions.vscjava.vscode-java-test}";
        }
        # Broken on macOS, and I don't develop C/C++/Rust/Zig much on Rust for now.
        # Check out why this is happening later.
        (lib.mkIf isLinux {
          "nvim/vscode-lldb".source = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb";
        })
      ];

      home.activation.createDictionaryDir = lib.hm.dag.entryBefore ["checkLinkTargets"] ''
        mkdir -p $HOME/.cache/nvim/spell/custom-dict
      '';
    }

    (lib.mkIf isLinux {
      home.persistence.${config.persistence.directory} = {
        directories = [
          ".local/state/nvim"
          ".local/share/eclipse"
          ".cache/nvim"
        ];
      };
    })
  ]
