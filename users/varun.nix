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
    // (lib.optionalAttrs pkgs.stdenv.isLinux {
      extraGroups = ["wheel" "audio" "video" "input" "networkmanager" "libvirtd" "adbusers" "dialout"];
      isNormalUser = true;
    });

  home-manager.users.varun = _:
    lib.mkMerge [
      {
        programs.git = {
          userEmail = "varun@snare.dev";
          userName = "Varun Narravula";
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
            x11 = {
              enable = true;
              picom.enable = false;
            };
            wayland.enable = true;
          };
        };

        home.persistence."/persist/home/varun" = {
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
