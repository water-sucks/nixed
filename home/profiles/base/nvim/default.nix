{
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
  grammars' = lib.filterAttrs (n: _: lib.hasPrefix "tree-sitter-" n) pkgs.vimPlugins.nvim-treesitter.passthru.builtGrammars;
  grammars = grammars' // generatedGrammars;

  parserDir = with lib;
    pkgs.linkFarm
    "treesitter-parsers"
    (mapAttrsToList
      (n: v: let
        name = "${replaceStrings ["-"] ["_"] (removePrefix "tree-sitter-" n)}.so";
      in {
        inherit name;
        path = "${v}/parser";
      })
      grammars);

  buildPlugin = name: source:
    pkgs.vimUtils.buildVimPlugin {
      name = "${name}-${source.version}";
      namePrefix = ""; # Clear name prefix
      inherit (source) version src;
      doCheck = false;
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
      "blink.cmp" = pkgs.vimPlugins.blink-cmp;
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
          astro-language-server
          ccls
          emmet-ls
          gopls
          golangci-lint-langserver
          jdt-language-server
          ltex-ls
          lua-language-server
          nixd
          nodePackages.bash-language-server
          nodePackages.graphql-language-service-cli
          nodePackages.svelte-language-server
          nodePackages.typescript-language-server
          prisma-ls
          pyright
          ruff-lsp
          superhtml
          nodePackages.vscode-langservers-extracted
          terraform-ls
          tinymist
          zls

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
          sqlfluff
          stylua
          typstyle

          # DAP servers
          delve

          # Other special sauce
          codeium
        ];
      };

      xdg.configFile = {
        "nvim/init.lua".source = ./init.lua;
        "nvim/lua".source = ./lua;
        "nvim/parser".source = "${parserDir}";
        "nvim/templates".source = ./templates;
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
      persistence = {
        directories = [
          ".local/state/nvim"
          ".local/share/eclipse"
          ".local/share/nvim"
          ".cache/nvim"
          ".local/share/ltex"
          ".codeium"
        ];
        files = [
          ".config/zls.json"
        ];
      };
    })
  ]
