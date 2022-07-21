{ pkgs, lib, ... }:

let
  inherit (pkgs.stdenv) isLinux isDarwin;

  sources = pkgs.callPackage _sources/generated.nix { };

  simplefox = sources.simplefox-theme.src;
in
lib.mkMerge [
  {
    programs.firefox = {
      enable = true;
      profiles."default" = {
        isDefault = true;
        userContent = builtins.readFile "${simplefox}/chrome/userContent.css";
        userChrome = builtins.readFile "${simplefox}/chrome/userChrome.css";
        extraConfig = builtins.readFile ./user.js;
      };
    };
  }
  (lib.mkIf isDarwin {
    programs.firefox.package = pkgs.runCommand "firefox-0.0.0" { } "mkdir $out";
  })
  (lib.mkIf isLinux {
    xdg.mimeApps.defaultApplications = {
      "x-scheme-handler/http" = [ "firefox.desktop" ];
      "x-scheme-handler/https" = [ "firefox.desktop" ];
      "x-scheme-handler/chrome" = [ "firefox.desktop" ];
      "text/html" = [ "firefox.desktop" ];
      "application/x-extension-htm" = [ "firefox.desktop" ];
      "application/x-extension-html" = [ "firefox.desktop" ];
      "application/x-extension-shtml" = [ "firefox.desktop" ];
      "application/xhtml+xml" = [ "firefox.desktop" ];
      "application/x-extension-xhtml" = [ "firefox.desktop" ];
      "application/x-extension-xht" = [ "firefox.desktop" ];
    };
  })
]
