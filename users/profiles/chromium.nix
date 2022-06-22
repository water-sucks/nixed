{ self, config, pkgs, lib, ... }:

lib.mkIf pkgs.stdenv.isLinux {
  programs.chromium = {
    enable = true;
    package = pkgs.ungoogled-chromium;
    extensions = [
      "cjpalhdlnbpafiamejdnhcphjbkeiagm"
    ];
  };
}
