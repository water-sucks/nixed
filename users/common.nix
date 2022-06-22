{ self, pkgs, lib, ... }:

lib.mkIf pkgs.stdenv.isLinux {
  users.mutableUsers = false;
}
