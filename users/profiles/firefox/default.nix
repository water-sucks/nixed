{ pkgs, ... }:

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

  home.sessionVariables = {
    MOZ_ENABLE_WAYLAND = "1";
  };

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
}
