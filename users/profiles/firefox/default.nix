{ pkgs, ... }:

{
  programs.firefox = {
    enable = true;
    extensions = with pkgs.nur.repos.rycee.firefox-addons; [
      ublock-origin
      darkreader
      duckduckgo-privacy-essentials
      bitwarden
      tabliss
      user-agent-string-switcher
    ];
    profiles."default" = {
      isDefault = true;
      userContent = builtins.readFile "${pkgs.simplefox-theme}/chrome/userContent.css";
      userChrome = builtins.readFile "${pkgs.simplefox-theme}/chrome/userChrome.css";
      extraConfig = builtins.readFile ./user.js;
    };
  };
}
