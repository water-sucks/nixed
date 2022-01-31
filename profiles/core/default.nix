{ self, config, lib, pkgs, ... }:
let
  inherit (lib) fileContents;
in
{
  imports = [ ../cachix ];

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
      freshfetch
      git
      bottom
      gptfdisk
      iputils
      jq
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

  programs.thefuck = {
    enable = true;
    alias = "fuck";
  };

  fonts = {
    fonts = with pkgs; [
      ibm-plex
      (nerdfonts.override { fonts = [ "IBMPlexMono" "JetBrainsMono" ]; })
    ];
    fontconfig.defaultFonts = {
      monospace = [ "BlexMono Nerd Font" ];
      sansSerif = [ "IBM Plex Sans" ];
      serif = [ "IBM Plex Serif" ];
    };
  };

  nix = {
    settings = {
      sandbox = true;
      trusted-users = [ "root" "@wheel" ];
      allowed-users = [ "@wheel" ];
      system-features = [ "nixos-test" "benchmark" "big-parallel" "kvm" ];
      max-jobs = "auto"; # Sets to number of cores on machine
      build-cores = 0; # Sets to number of cores on machine
      auto-optimise-store = true;
    };
    gc.automatic = true;
    extraOptions = ''
      min-free = 536870912
      keep-outputs = true
      keep-derivations = true
      fallback = true
    '';
  };

  # Sadness, I wish I did not need this option
  nixpkgs.config.allowUnfree = true;
}
