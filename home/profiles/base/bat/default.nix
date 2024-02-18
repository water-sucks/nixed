{pkgs, ...}: let
  darkroseThemeSrc = pkgs.stdenvNoCC.mkDerivation {
    name = "darkrose-tmtheme";
    version = "0.0.1";
    src = ./theme;

    dontBuild = true;

    installPhase = ''
      mkdir $out
      cp darkrose.tmTheme $out;
    '';
  };
in {
  programs.bat = {
    enable = true;
    themes = {
      darkrose = {
        src = darkroseThemeSrc;
        file = "./darkrose.tmTheme";
      };
    };
    config = {
      theme = "darkrose";
    };
  };
}
