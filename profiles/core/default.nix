{ self, config, lib, pkgs, ... }:

{
  programs.zsh.enable = true;

  programs.thefuck = {
    enable = true;
    alias = "fuck";
  };

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
      gptfdisk
      iputils
      jq
      lsof
      manix
      moreutils
      nix-index
      neovim
      nmap
      procs
      ripgrep
      skim
      tealdeer
      tokei
      usbutils
      utillinux
      whois
      zoxide
    ];

    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
  };

  i18n.defaultLocale = "en_US.UTF-8";
}
