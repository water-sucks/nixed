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
  udev,
  gtk3,
  vulkan-loader,
  zlib,
  libpulseaudio,
}: let
  desktopItem = makeDesktopItem {
    name = "nsmb-mvl";
    desktopName = "NSMB Mario vs. Luigi";
    comment = "Standalone Unity remake of New Super Mario Bros DS' multiplayer gamemode, 'Mario vs Luigi'";
    exec = "nsmb-mvl";
    icon = "mario";
    categories = ["Game"];
  };
in
  stdenv.mkDerivation {
    inherit (sources.nsmb-mvl) pname version src;

    nativeBuildInputs = [unzip autoPatchelfHook];

    buildInputs = [
      stdenv.cc.cc.lib

      alsa-lib
      dbus.lib
      gtk3
      libglvnd
      libpulseaudio
      udev
      vulkan-loader
      zlib
    ];

    installPhase = ''
      runHook preInstall

      mkdir -p "$out/bin" "$out/share" "$out/opt/nsmb-mvl"
      cp -r linux.x86_64 linux_Data UnityPlayer.so "$out/opt/nsmb-mvl"
      ln -s "$out/opt/nsmb-mvl/linux.x86_64" "$out/bin/nsmb-mvl"
      ln -s "${desktopItem}/share/applications" "$out/share"

      chmod +x $out/opt/nsmb-mvl/linux.x86_64

      runHook postInstall
    '';

    postFixup = ''
      patchelf \
        --add-needed libasound.so \
        --add-needed libpulse-simple.so \
        --add-needed libdbus-1.so \
        --add-needed libGL.so \
        --add-needed libudev.so \
        --add-needed libgtk-3.so \
        --add-needed libvulkan.so \
        $out/bin/nsmb-mvl
    '';

    meta = with lib; {
      description = "Standalone Unity remake of New Super Mario Bros DS' multiplayer gamemode, 'Mario vs Luigi'";
      homepage = "https://ipodtouch0218.itch.io/nsmb-mariovsluigi";
      license = licenses.unfree;
      maintainers = with maintainers; [water-sucks];
      platforms = ["x86_64-linux"];
    };
  }
