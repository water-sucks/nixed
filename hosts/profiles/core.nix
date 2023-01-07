{
  pkgs,
  lib,
  ...
}: {
  programs.zsh.enable = true;

  environment = {
    systemPackages = with pkgs;
      [
        bat
        bc
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
        tree
        whois
        zoxide
      ]
      ++ (lib.optionals stdenv.isLinux [
        gptfdisk
        iputils
        file
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
