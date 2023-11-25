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
        fd
        git
        bottom
        jq
        lsd
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
