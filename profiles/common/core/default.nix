{ self, config, lib, pkgs, ... }:

let
  inherit (pkgs.stdenv) isLinux;
in
{
  programs.zsh.enable = true;

  environment = {
    systemPackages = with pkgs; [
      bat
      binutils
      coreutils
      curl
      dnsutils
      dosfstools
      dutree
      exa
      fd
      git
      bottom
      jq
      lsof
      manix
      moreutils
      nix-index
      neovim
      nmap
      ripgrep
      skim
      tealdeer
      tokei
      whois
      zoxide
    ] ++ (lib.optionals isLinux [
      gptfdisk
      iputils
      procs
      usbutils
      utillinux
    ]);

    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
  };
}
