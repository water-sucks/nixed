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
      psmisc
      ripgrep
      skim
      tealdeer
      usbutils
      utillinux
      whois
    ];

    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
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
    autoOptimiseStore = true;
    gc.automatic = true;
    optimise.automatic = true;
    useSandbox = true;
    allowedUsers = [ "@wheel" ];
    trustedUsers = [ "root" "@wheel" ];
    systemFeatures = [ "nixos-test" "benchmark" "big-parallel" "kvm" ];
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
