{
  lib,
  stdenv,
  fetchurl,
  autoPatchelfHook,
  dpkg,
  makeWrapper,
  alsa-lib,
  gtk3,
  mesa,
  nspr,
  nss,
  systemd,
  ...
}:
stdenv.mkDerivation rec {
  pname = "bruno";
  version = "0.16.5";

  src = fetchurl {
    url = "https://github.com/usebruno/bruno/releases/download/v${version}/bruno_${version}_amd64_linux.deb";
    hash = "sha256-VULbXA08okJdX8ItBa4eukENw2zZM2iObbnOXvXhXnY=";
  };

  nativeBuildInputs = [autoPatchelfHook dpkg makeWrapper];

  buildInputs = [
    alsa-lib
    gtk3
    mesa
    nspr
    nss
  ];

  runtimeDependencies = [(lib.getLib systemd)];

  installPhase = ''
    runHook preInstall
    mkdir -p "$out/bin"
    cp -R opt $out
    cp -R "usr/share" "$out/share"
    chmod -R g-w "$out"
    runHook postInstall
  '';

  postFixup = ''
    ln -s "$out/opt/Bruno/bruno" "$out/bin/bruno"
    substituteInPlace "$out/share/applications/bruno.desktop" \
      --replace "/opt/Bruno/bruno" "$out/bin/bruno"
  '';

  meta = with lib; {
    description = "Open-source IDE For exploring and testing APIs.";
    homepage = "https://www.usebruno.com";
    license = licenses.mit;
    maintainers = with maintainers; [water-sucks];
    platforms = ["x86_64-linux"];
  };
}
