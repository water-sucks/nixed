{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux;
in {
  programs.wezterm = {
    enable = true;
    package = with pkgs;
      if isLinux
      then wezterm
      else runCommand "wezterm-0.0.0" {} "mkdir $out";
    extraConfig = builtins.readFile ./wezterm.lua;
  };
}
