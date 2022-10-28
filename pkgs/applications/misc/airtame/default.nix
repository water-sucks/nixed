{
  sources,
  lib,
  stdenv,
  autoPatchelfHook,
  dpkg,
  makeWrapper,
  ffmpeg,
  gtk3,
  libappindicator-gtk3,
  libdbusmenu,
  libnotify,
  libopus,
  libpulseaudio,
  libsecret,
  nss,
  systemd,
  xdg-utils,
  xorg,
}:
stdenv.mkDerivation rec {
  inherit (sources.airtame) pname version src;

  nativeBuildInputs = [autoPatchelfHook dpkg makeWrapper];

  buildInputs = [
    ffmpeg
    gtk3
    libappindicator-gtk3
    libnotify
    libpulseaudio
    libopus
    libsecret
    nss
    xorg.libXdamage
    xorg.libXScrnSaver
    xorg.libXtst
  ];

  runtimeDependencies = [(lib.getLib systemd) libnotify libdbusmenu xdg-utils];

  unpackPhase = "dpkg-deb -x $src .";

  installPhase = ''
    runHook preInstall
    mkdir -p "$out/bin"
    cp -R "opt" "$out"
    cp -R "usr/share" "$out/share"
    chmod -R g-w "$out"
    runHook postInstall
  '';

  postFixup = ''
    makeWrapper $out/opt/Airtame/airtame-application $out/bin/airtame-application \
      --prefix LD_LIBRARY_PATH : "${lib.makeLibraryPath buildInputs}" \
      "''${gappsWrapperArgs[@]}"
    substituteInPlace $out/share/applications/airtame-application.desktop \
      --replace "/opt/Airtame/airtame-application" "$out/bin/airtame-application" \
  '';

  meta = with lib; {
    description = "Airtame official screen streaming application.";
    homepage = "https://airtame.com";
    license = licenses.unfree;
    maintainers = with maintainers; [water-sucks];
    platforms = ["x86_64-linux"];
  };
}
