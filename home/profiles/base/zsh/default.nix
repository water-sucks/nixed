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
        enableAutosuggestions = false; # Disabled for thefuck command to work instantly
        enableCompletion = true;
        history = {
          path = "${config.xdg.dataHome}/zsh/zsh_history";
          expireDuplicatesFirst = true;
          ignoreSpace = true;
          save = 10000;
          share = true;
          size = 10000;
        };
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
        oh-my-zsh = {
          enable = true;
          plugins = ["git" "sudo" "dirhistory" "thefuck" "ssh-agent"];
          theme = ""; # Using starship for theme
        };
        initExtraFirst = ''
          nerdfetch
        '';
        shellAliases = {
          please = "sudo";
          dog = "bat";
          mkdir = "mkdir -p";
        };
      };
    }
    (lib.mkIf isDarwin {
      programs.zsh.initExtra = ''
        export PATH="$PATH:$HOME/.flutter-sdk/bin" # For Flutter development on Macs
      '';
      home.sessionVariables = {
        FLUTTER_SDK = "$HOME/.flutter-sdk";
      };
    })
    (lib.mkIf isLinux {
      home.persistence."/persist/home/${config.home.username}" = {
        directories = [
          ".local/share/zsh"
        ];
      };
    })
  ]
