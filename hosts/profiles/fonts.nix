{pkgs, ...}: {
  fonts = let
    packages-key = "${
      if pkgs.stdenv.isDarwin
      then "fonts"
      else "packages"
    }";
  in {
    ${packages-key} = with pkgs; [
      ibm-plex
      (nerdfonts.override {fonts = ["IBMPlexMono"];})
      font-awesome
    ];
    fontDir.enable = true;
  };
}
