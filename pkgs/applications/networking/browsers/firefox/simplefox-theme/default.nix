{ stdenv, sources, ... }:

stdenv.mkDerivation {
  pname = "simplefox-theme";
  inherit (sources.simplefox-theme) version src;

  dontBuild = true;

  installPhase = ''
    mkdir $out
    cp -r . $out
  '';
}
