{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;

  sources = pkgs.callPackage _sources/generated.nix {};

  cascade = let
    patched-cascade = pkgs.stdenv.mkDerivation {
      name = "cascade-theme-src";
      inherit (sources.cascade-theme) src;
      patches = [./cascade-config.patch];
      dontBuild = true;
      installPhase = ''
        mkdir $out
        cp -r chrome/* $out
      '';
    };
  in
    pkgs.buildEnv {
      name = "cascade-chrome";
      paths = [
        patched-cascade
        ./chrome
      ];
    };
in
  lib.mkMerge [
    {
      programs.firefox = {
        enable = true;
        profiles."default" = {
          id = 0;
          isDefault = true;
          extraConfig = builtins.readFile ./user.js;
        };
      };

      home.file = let
        prefix =
          if isDarwin
          then "Library/Application Support/Firefox/Profiles/default"
          else ".mozilla/firefox/default";
      in {
        "cascade-chrome" = {
          source = cascade;
          target = "${prefix}/chrome";
        };
      };
    }
    (lib.mkIf isDarwin {
      programs.firefox.package = pkgs.runCommand "firefox-0.0.0" {} "mkdir $out";
    })
    (lib.mkIf isLinux {
      xdg.mimeApps.defaultApplications = {
        "x-scheme-handler/http" = ["firefox.desktop"];
        "x-scheme-handler/https" = ["firefox.desktop"];
        "x-scheme-handler/chrome" = ["firefox.desktop"];
        "text/html" = ["firefox.desktop"];
        "application/x-extension-htm" = ["firefox.desktop"];
        "application/x-extension-html" = ["firefox.desktop"];
        "application/x-extension-shtml" = ["firefox.desktop"];
        "application/xhtml+xml" = ["firefox.desktop"];
        "application/x-extension-xhtml" = ["firefox.desktop"];
        "application/x-extension-xht" = ["firefox.desktop"];
      };

      home.persistence.${config.persistence.directory} = {
        directories = [
          ".mozilla"
        ];
      };
    })
  ]
