{ stdenv
, lib
, appimageTools
, fetchurl
, makeDesktopItem
}:

let
  pname = "tidal-hifi";
  version = "2.8.0";
  name = "${pname}-${version}";

  src = fetchurl {
    url = "https://github.com/Mastermindzh/tidal-hifi/releases/download/${version}/tidal-hifi-${version}.AppImage";
    sha256 = "sha256-8HCodVBuWcCyA01rTTB5QNHqkcUtCDpCRaEENRwT6/E=";
  };

  contents = appimageTools.extractType2 {
    inherit name src;
  };

  desktopItem = makeDesktopItem {
    name = "pname";
    desktopName = "TIDAL";
    comment = "The web version of Tidal running in electron with hifi support thanks to widevine";
    exec = "${pname} %U";
    icon = "tidal-hifi";
    categories = [ "Audio" ];
  };
in
appimageTools.wrapType2 rec {
  inherit name src;

  extraPkgs = appimageTools.defaultFhsEnvArgs.multiPkgs;

  extraInstallCommands = ''
    mv $out/bin/{${name},${pname}}

    mkdir -p $out/share
    cp -rt $out/share ${desktopItem}/share/applications ${contents}/usr/share/icons
    chmod -R +w $out/share
  '';

  meta = with lib; {
    description = "The web version of Tidal running in electron with hifi support thanks to widevine";
    homepage = "https://github.com/Mastermindzh/tidal-hifi";
    license = licenses.mit;
    platforms = [ "x86_64-linux" ];
  };
}
