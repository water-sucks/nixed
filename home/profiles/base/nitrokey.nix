{pkgs, ...}: let
  inherit (pkgs.stdenv) isDarwin;
in {
  home.packages = [
    pkgs.stable.pynitrokey
  ];

  programs.zsh.initExtra = ''
    function nkso() {
      otp="$(nitropy nk3 secrets get-otp "$1" | tail -1 | xargs printf "%s")"
      ${
      if isDarwin
      then ''
        echo "$otp" | pbcopy
      ''
      else ''
        if [ "$WAYLAND_DISPLAY" != "" ]; then
          wl-copy "$otp"
        else
          echo "$otp" | xclip
        fi
      ''
    }
    }

    function nksol() {
      nitropy nk3 secrets list | awk '{print $2}'
    }
  '';
}
