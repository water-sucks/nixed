{
  pkgs,
  lib,
  ...
}: {
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
          userEmail = "varun@cvte.org";
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
      (lib.mkIf pkgs.stdenv.isLinux {
        profiles = {
          graphical = {
            enable = true;
            x11.enable = true;
            wayland.enable = true;
          };
        };
      })
    ];
}
