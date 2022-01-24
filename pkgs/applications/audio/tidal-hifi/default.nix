{ sources
, stdenv
, lib
, dpkg
, glibc
, gcc-unwrapped
, autoPatchelfHook
, makeWrapper
, nodePackages
, electron
, nss
, gdk-pixbuf
, libXext
, libxcb
, libXrandr
, libXdamage
, libXcursor
, libXcomposite
, libXtst
, alsa-lib
, pango
, expat
, gtk3-x11
, libXScrnSaver
}:

let
  deps = [
    nss
    gdk-pixbuf
    libXext
    libxcb
    libXrandr
    libXdamage
    libXcursor
    libXcomposite
    libXtst
    alsa-lib
    pango
    expat
    gtk3-x11
    libXScrnSaver
  ];
in
stdenv.mkDerivation {
  inherit (sources.tidal-hifi) pname version src;

  system = "x86_64-linux";

  nativeBuildInputs = [
    autoPatchelfHook
    makeWrapper
    dpkg
    nodePackages.asar
  ] ++ deps;

  buildInputs = [
    stdenv.cc.cc
  ];

  dependencies = deps;

  sourceRoot = ".";

  unpackCmd = "dpkg-deb -x $src .";

  postPatch = ''
    asar e opt/tidal-hifi/resources/app.asar app
    autoPatchelf app
    asar p app opt/tidal-hifi/resources/app.asar
  '';

  installPhase = ''
    mkdir -p $out/bin

    cp -r usr/share $out/share;
    cp -r opt/tidal-hifi/resources $out/share/tidal-hifi

    substituteInPlace $out/share/applications/tidal-hifi.desktop \
      --replace /opt/tidal-hifi/tidal-hifi $out/bin/tidal-hifi

    makeWrapper ${electron}/bin/electron $out/bin/tidal-hifi \
      --add-flags $out/share/tidal-hifi/app.asar
  '';

  meta = with lib; {
    description = "An Electron wrapper around TIDAL's web version";
    homepage = "https://github.com/Mastermindzh/tidal-hifi";
    license = licenses.bsd3;
    platforms = [ "x86_64-linux" ];
  };
}
