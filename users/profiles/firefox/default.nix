{ pkgs, lib, ... }:

let
  inherit (pkgs.stdenv) isLinux isDarwin;
in
lib.mkMerge [
  {
    programs.firefox = {
      enable = true;
      profiles."default" = {
        isDefault = true;
        userContent = builtins.readFile "${pkgs.simplefox-theme}/chrome/userContent.css";
        userChrome = builtins.readFile "${pkgs.simplefox-theme}/chrome/userChrome.css";
        extraConfig = builtins.readFile ./user.js;
      };
    };
  }
  # Doing this separately to avoid Home Manager complaining about package
  # when default `pkgs.firefox` is explicitly specified
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
