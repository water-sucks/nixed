{
  lib,
  stdenv,
  ...
}:
stdenv.mkDerivation {
  pname = "plymouth-spinning-watch-theme";
  version = "unstable-2020-04-30";
  src = builtins.path {
    path = ./.;
    name = "plymouth-spinning-watch-theme";
  };

  buildInputs = [];

  configurePhase = "mkdir -pv $out/share/plymouth/themes";

  dontBuild = true;

  installPhase = ''
    cp -rv spinning-watch/ $out/share/plymouth/themes;
    substituteInPlace $out/share/plymouth/themes/spinning-watch/spinning-watch.plymouth --replace "/usr/" "$out/"
  '';

  meta = with lib; {
    description = "Plymouth spinning watch theme";
    homepage = "https://github.com/adi1090x/plymouth-themes";
    license = licenses.gpl3;
    platforms = platforms.linux;
  };
}
