{
  sources,
  lib,
  stdenv,
  unzip,
  autoPatchelfHook,
  makeDesktopItem,
  makeWrapper,
  gtk2,
  zlib,
  alsa-lib,
  pipewire,
  libXrandr,
  libXScrnSaver,
  udev,
  libX11,
  libXcursor,
  libXext,
  libXi,
  libXinerama,
  libXxf86vm,
  dbus,
  libglvnd,
  vulkan-loader,
  curl,
  forceVulkan ? false,
}: let
  desktopItem = makeDesktopItem {
    name = "nsmb-mvl";
    desktopName = "NSMB Mario vs. Luigi";
    comment = "Standalone Unity remake of New Super Mario Bros DS' multiplayer gamemode, 'Mario vs Luigi'";
    exec = "nsmb-mvl";
    icon = "mario";
    categories = ["Game"];
  };

  libPath =
    lib.makeLibraryPath
    [
      libX11
      libXcursor
      libXext
      libXi
      libXinerama
      libXrandr
      libXScrnSaver
      libXxf86vm
      dbus.lib
      libglvnd
      vulkan-loader
      curl
    ];
in
  stdenv.mkDerivation {
    inherit (sources.nsmb-mvl) pname version src;

    nativeBuildInputs = [unzip autoPatchelfHook makeWrapper];

    buildInputs = [
      stdenv.cc.cc.lib
      gtk2
      zlib

      alsa-lib
      pipewire
      libXrandr
      libXScrnSaver
      udev
    ];

    installPhase = ''
      mkdir -p "$out/bin" "$out/share"
      cp -r linux.x86_64 linux_Data UnityPlayer.so "$out/share"
      makeWrapper "$out/share/linux.x86_64" "$out/bin/nsmb-mvl" \
        ${lib.optionalString forceVulkan "--add-flags '-force-vulkan'"}

      ln -s "${desktopItem}/share/applications" $out/share
    '';

    postFixup = ''
      for lib in $(find $out -type f -name "*.so"); do
        patchelf --set-rpath "${libPath}" "$lib"
      done
      patchelf --set-rpath "${libPath}" $out/share/linux.x86_64
      patchelf \
        --add-needed libasound.so.2 \
        --add-needed libudev.so.1 \
        --add-needed libXrandr.so.2 \
        --add-needed libXss.so.1 \
        $out/share/linux.x86_64
    '';

    meta = with lib; {
      description = "Standalone Unity remake of New Super Mario Bros DS' multiplayer gamemode, 'Mario vs Luigi'";
      homepage = "https://ipodtouch0218.itch.io/nsmb-mariovsluigi";
      license = licenses.unfree;
      maintainers = with maintainers; [water-sucks];
      platforms = ["x86_64-linux"];
    };
  }
