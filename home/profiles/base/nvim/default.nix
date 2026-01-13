{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux;

  sources = pkgs.callPackage _sources/generated.nix {};

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

  nvim-treesitter = pkgs.vimPlugins.nvim-treesitter.withAllGrammars;
  parserDir = pkgs.symlinkJoin {
    name = "treesitter-parsers";
    paths = nvim-treesitter.dependencies;
  };
  queryDir = "${nvim-treesitter}/runtime/queries";

  plugins =
    generatedPlugins
    // {
      # Add plugins you want synced with nixpkgs here, or override
      # existing ones from the generated plugin set.
      # inherit (pkgs.vimPlugins) nvim-treesitter;
      inherit nvim-treesitter;
      "blink.cmp" = pkgs.vimPlugins.blink-cmp;
    };

  pluginDir = with lib;
    pkgs.linkFarm "nvim-plugins" (mapAttrsToList (n: v: {
        name = n;
        path = v;
      })
      plugins);

  # prettier doesn't support global configuration explicitly.
  # This is a workaround wrapper, that can be overridden by having
  # Prettier inside a development shell.
  prettierDefaultConfig = let
    inherit (pkgs.nodePackages) prettier;
    prettierConfig = pkgs.writeText "prettier-wrapper-config.json" (
      builtins.toJSON {
        experimentalTernaries = true;
        printWidth = 80;
        tabWidth = 2;
        useTabs = false;
        singleQuote = true;
        proseWrap = "always";
      }
    );
  in
    pkgs.writeShellScriptBin "prettier-default-config" ''
      ${lib.getExe prettier} --config "${prettierConfig}" "$@"
    '';
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
          golangci-lint
          harper
          jdt-language-server
          lua-language-server
          nixd
          nodePackages.bash-language-server
          nodePackages.svelte-language-server
          nodePackages.typescript-language-server
          pyright
          ruff
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
          nixfmt
          prettierDefaultConfig
          python3Packages.flake8
          rust-analyzer
          shellcheck
          shellharden
          shfmt
          statix
          sqlfluff
          stylua
          typstyle

          # DAP servers
          delve
        ];
      };

      xdg.configFile = {
        "nvim/init.lua".source = ./init.lua;
        "nvim/lua".source = ./lua;
        "nvim/templates".source = ./templates;
      };

      xdg.dataFile = lib.mkMerge [
        {
          "nvim/site/parser".source = "${parserDir}/parser";
          "nvim/site/queries".source = queryDir;
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
          ".local/share/harper-ls"
          ".codeium"
        ];
        files = [
          ".config/zls.json"
        ];
      };
    })
  ]
