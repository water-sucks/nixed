{
  sources,
  lib,
  stdenv,
  zig,
  wayland,
  wayland-protocols,
  wlroots,
  libxkbcommon,
  linux-pam,
  udev,
  libevdev,
  libinput,
  libGL,
  scdoc,
  pkg-config,
  ...
}:
stdenv.mkDerivation {
  inherit (sources.waylock) pname version src;

  nativeBuildInputs = [zig wayland scdoc pkg-config];

  buildInputs = [
    wayland-protocols
    wlroots
    libxkbcommon
    linux-pam
    udev
    libevdev
    libinput
    libGL
  ];

  dontConfigure = true;

  preBuild = ''
    export HOME=$TMPDIR
  '';

  installPhase = ''
    runHook preInstall
    zig build -Drelease-safe -Dcpu=baseline -Dman-pages --prefix $out install
    runHook postInstall
  '';

  installFlags = ["DESTDIR=$(out)"];

  meta = with lib; {
    homepage = "https://github.com/ifreund/river";
    description = "A dynamic tiling wayland compositor";
    license = licenses.isc;
    platforms = platforms.linux;
    maintainers = with maintainers; [water-sucks];
  };
}
