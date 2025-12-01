{
  config,
  pkgs,
  lib,
  ...
}: let
  sources = pkgs.callPackage _sources/generated.nix {};

  inherit (pkgs.stdenv) isLinux isDarwin;
in
  lib.mkMerge [
    {
      programs.zsh = {
        enable = true;
        enableCompletion = true;
        completionInit = ''
          setopt extendedglob
          autoload -Uz compinit
          if [[ -n $HOME/.zcompdump(#qN.mh+24) ]]; then
            compinit;
          else
            compinit -C;
          fi;
        '';
        history = {
          path = "${config.xdg.dataHome}/zsh/zsh_history";
          expireDuplicatesFirst = true;
          ignoreSpace = true;
          save = 10000;
          share = true;
          size = 10000;
        };
        initContent = ''
          setopt +o nomatch

          if [ -z "$NVIM_LISTEN_ADDRESS" ]; then
            ZVM_VI_SURROUND_BINDKEY=s-prefix
            ZVM_KEYTIMEOUT=0.1
            source ${pkgs.zsh-vi-mode}/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
          fi

          if [ -f "$HOME/.zshrc.local" ]; then
            source $HOME/.zshrc.local
          fi
        '';
        plugins = [
          {
            name = "zsh-autosuggestions";
            inherit (sources.zsh-autosuggestions) src;
          }
          {
            name = "fast-syntax-highlighting";
            inherit (sources.fast-syntax-highlighting) src;
          }
        ];
        shellAliases = {
          please = "sudo";
          dog = "bat";
          benji = "dog";
          mkdir = "mkdir -p";
          thon = "python";
        };
      };
    }
    (lib.mkIf isDarwin {
      programs.zsh.initContent = ''
        export PATH="$PATH:$HOME/.flutter-sdk/bin" # For Flutter development on Macs
      '';
      home.sessionVariables = {
        FLUTTER_SDK = "$HOME/.flutter-sdk";
      };
    })
    (lib.mkIf isLinux {
      programs.zsh.shellAliases = {
        open = "xdg-open";
      };
      persistence = {
        directories = [
          ".local/share/zsh"
        ];
      };
    })
  ]
