{
  sources,
  lib,
  stdenv,
  zig,
  wayland,
  wayland-protocols,
  wlroots_0_16,
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
    wlroots_0_16
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
    homepage = "https://github.com/ifreund/waylock";
    description = "A small screen locker for Wayland compositors.";
    license = licenses.isc;
    platforms = platforms.linux;
    maintainers = with maintainers; [water-sucks];
  };
}
