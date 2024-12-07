{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;

  sources = pkgs.callPackage _sources/generated.nix {};

  arcadia = pkgs.stdenv.mkDerivation {
    name = "arcadia-theme-src";
    inherit (sources.arcadia-theme) src;

    patches = []; # Add patches here
    dontBuild = true;

    installPhase = ''
      mkdir $out

      cp -r chrome $out
      cp user.js $out

      cp -f ${./chrome/new-tab-wallpaper.jpg} $out/chrome/new-tab-wallpaper.jpg
      cp -f ${./chrome/userContent.css} $out/chrome/userContent.css
    '';
  };
in
  lib.mkMerge [
    {
      programs.firefox = {
        enable = true;
        profiles."default" = {
          id = 0;
          isDefault = true;
        };
      };

      home.file = let
        prefix =
          if isDarwin
          then "Library/Application Support/Firefox/Profiles/default"
          else ".mozilla/firefox/default";
      in {
        "arcadia-chrome" = {
          source = "${arcadia}/chrome";
          target = "${prefix}/chrome";
        };
        "arcadia-user-js" = {
          source = "${arcadia}/user.js";
          target = "${prefix}/user.js";
        };
      };
    }
    (lib.mkIf isDarwin {
      programs.firefox.package = pkgs.runCommand "firefox-0.0.0" {} "mkdir $out";
      home.sessionVariables = {
        MOZ_LEGACY_PROFILES = "1";
      };
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

      persistence = {
        directories = [
          ".mozilla"
        ];
      };
    })
  ]
