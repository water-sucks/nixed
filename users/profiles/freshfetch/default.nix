{ self, config, pkgs, ... }:

{
  programs.freshfetch = {
    enable = true;

    art = builtins.readFile ./art.lua;
    info = builtins.readFile ./info.lua;
  };
}
