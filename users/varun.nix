{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;
in {
  users.users.varun =
    {
      uid = 1000;
      description = "Varun Narravula";
      shell = pkgs.zsh;
    }
    // (lib.optionalAttrs isLinux {
      extraGroups = ["wheel" "audio" "video" "input" "networkmanager" "libvirtd" "adbusers" "dialout"];
      isNormalUser = true;
    });

  home-manager.users.varun = {config, ...}:
    lib.mkMerge [
      # User-specific program configuration
      {
        programs.git = {
          userEmail = "varun@snare.dev";
          userName = "Varun Narravula";
        };
        programs.ssh.githubAccounts = {
          "water-sucks" = {email = "varun@snare.dev";};
          "varun-sal" = {email = "varun@saltandlight.community";};
        };
        home.sessionVariables = lib.mkIf isLinux {
          NIXOS_CONFIG = "$HOME/.nixed"; # For `nixos-cli`
        };
      }
      {
        profiles = {
          base.enable = true;
          dev.enable = true;
          apps.enable = true;
        };
      }
      (lib.mkIf isLinux {
        profiles = {
          graphical = {
            enable = true;
            darwin-wallpaper.enable = false;
            x11.enable = true;
            wayland.enable = true;
          };
        };

        persistence.directory = "/persist/home/varun";

        home.persistence.${config.persistence.directory} = {
          directories = [
            ".nixed"
            "Code"
            "Documents"
            "Downloads"
            "Music"
            "Pictures"
            "Videos"
            "VMs"
          ];
          allowOther = true;
        };
      })
      (lib.mkIf isDarwin {
        profiles = {
          graphical = {
            darwin-wallpaper.enable = true;
          };
        };
      })
    ];
}
