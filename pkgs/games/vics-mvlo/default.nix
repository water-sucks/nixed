{
  sources,
  lib,
  stdenv,
  unzip,
  autoPatchelfHook,
  makeDesktopItem,
  alsa-lib,
  dbus,
  libglvnd,
  libXrandr,
  libXScrnSaver,
  udev,
  vulkan-loader,
  zlib,
}: let
  desktopItem = makeDesktopItem {
    name = "vics-mvlo";
    desktopName = "Vic's Mario vs. Luigi";
    comment = "Mod of NSMBVersus where you can customize many things";
    exec = "vics-mvlo";
    icon = "mario";
    categories = ["Game"];
  };
in
  stdenv.mkDerivation {
    inherit (sources.vics-mvlo) pname version src;

    unpackPhase = ''
      unzip $src
    '';

    nativeBuildInputs = [unzip autoPatchelfHook];

    buildInputs = [
      stdenv.cc.cc.lib

      alsa-lib
      dbus.lib
      libglvnd
      libXrandr
      libXScrnSaver
      udev
      vulkan-loader
      zlib
    ];

    installPhase = ''
      runHook preInstall

      mkdir -p "$out/bin" "$out/share" "$out/opt/vics-mvlo"
      cp -r vcmi.x86_64 vcmi_Data UnityPlayer.so "$out/opt/vics-mvlo"
      ln -s "$out/opt/vics-mvlo/vcmi.x86_64" "$out/bin/vics-mvlo"
      ln -s "${desktopItem}/share/applications" "$out/share"

      runHook postInstall
    '';

    postFixup = ''
      patchelf \
        --add-needed libasound.so.2 \
        --add-needed libudev.so.1 \
        --add-needed libXrandr.so.2 \
        --add-needed libXss.so.1 \
        --add-needed libdbus-1.so.3 \
        --add-needed libGL.so.1 \
        $out/bin/vics-mvlo
    '';

    meta = with lib; {
      description = "Mod of NSMBVersus where you can customize many things";
      homepage = "https://vlco-o.itch.io/vics-custom-match-inator";
      license = licenses.unfree;
      maintainers = with maintainers; [water-sucks];
      platforms = ["x86_64-linux"];
    };
  }
