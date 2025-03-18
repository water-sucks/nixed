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
        moreutils
        nix-index
        neovim
        nmap
        ripgrep
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

        linux-manual
        man-pages
        man-pages-posix
      ]);

    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
  };
}
