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
          base = {
            zsh = true;
            nerdfetch = true;
            starship = true;
            fuck = true;
            exa = true;
            bat = true;
            zoxide = true;
            nvim = true;
          };

          dev = {
            direnv = true;
            ssh = true;
            git = true;
            tmux = true;
            go = true;
            python = true;
          };

          apps = {
            kitty = true;
            firefox = true;
            chromium = true;
            tor = true;
            i2p = true;
            protonvpn = true;
            zathura = true;
            music = true;
            messaging = true;
            filen = true;
            passwords = true;
            insomnia = true;
          };
        };
      }
      (lib.mkIf pkgs.stdenv.isLinux {
        profiles = {
          graphical = {
            xdg = true;
            gtk = true;
            dconf = true;
            fcitx5 = true;
            rofi = true;
            power-menu = true;
            dunst = true;
            x11 = {
              leftwm = true;
              picom = true;
              polybar = true;
              feh = true;
              xsecurelock = true;
            };
            wayland = {
              river = true;
              waybar = true;
              wob = true;
            };
          };
        };
      })
    ];
}
