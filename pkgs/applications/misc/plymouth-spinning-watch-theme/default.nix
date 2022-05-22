{ lib, stdenv, ... }:

stdenv.mkDerivation {
  pname = "plymouth-spinning-watch-theme";
  version = "unstable-2020-04-30";
  src = builtins.path { path = ./.; name = "plymouth-spinning-watch-theme"; };

  buildInputs = [ ];

  configurePhase = "mkdir -pv $out/share/plymouth/themes";

  dontBuild = true;

  installPhase = ''
    cp -rv spinning-watch/ $out/share/plymouth/themes;
    substituteInPlace $out/share/plymouth/themes/spinning-watch/spinning-watch.plymouth --replace "/usr/" "$out/"
  '';
}
