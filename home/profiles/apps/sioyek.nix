{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux;
in
  lib.mkMerge [
    {
      programs.sioyek = {
        enable = true;
        package = with pkgs;
          if isLinux
          then
            (sioyek.overrideAttrs (_: {
              patches = [
                (pkgs.fetchurl {
                  url = "https://git.alpinelinux.org/aports/plain/community/sioyek/mupdf-0.23.0.patch?id=86e913eccf19b97a16f25d9b6cdf0f50232f1226";
                  sha256 = "sha256-sEqhpk7/h6g/fIhbu5LgpKKnbnIFLInrTP1k+/GhrXE=";
                })
              ];
            }))
          else runCommand "sioyek-0.0.0" {} "mkdir $out";
        bindings = {
          move_up = "k";
          move_down = "j";
          move_left = "h";
          move_right = "l";
          screen_down = ["d" "<C-d>"];
          screen_up = ["u" "<C-u>"];
          toggle_dark_mode = "<C-i>";
        };
        config = {
          should_launch_new_window = "1";
        };
      };
    }
    (lib.mkIf isLinux {
      xdg.mimeApps.defaultApplications = {
        "application/pdf" = ["sioyek.desktop"];
        "application/x-pdf" = ["sioyek.desktop"];
        "application/fdf" = ["sioyek.desktop"];
        "application/xdp" = ["sioyek.desktop"];
        "application/xfdf" = ["sioyek.desktop"];
        "application/pdx" = ["sioyek.desktop"];
      };
    })
  ]
