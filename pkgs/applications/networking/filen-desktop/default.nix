{
  sources,
  lib,
  appimageTools,
  makeDesktopItem,
}: let
  inherit (sources.filen-desktop) pname version src;
  name = "${pname}-${version}";

  contents = appimageTools.extractType2 {
    inherit name src;
  };

  desktopItem = makeDesktopItem {
    name = "${pname}";
    desktopName = "Filen Sync";
    comment = "Desktop client for filen.io";
    exec = "${pname} %U";
    icon = "filen-desktop-client";
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
      description = "Desktop client for filen.io";
      homepage = "filen.io";
      license = licenses.agpl3Only;
      platforms = ["x86_64-linux"];
    };
  }
