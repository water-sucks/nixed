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
    # userContent = builtins.readFile "${simplefox}/chrome/userContent.css";
    # userChrome = builtins.readFile "${simplefox}/chrome/userChrome.css";
  };
}
