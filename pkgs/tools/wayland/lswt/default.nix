{
  sources,
  lib,
  stdenv,
  wayland,
  wayland-protocols,
}:
stdenv.mkDerivation {
  inherit (sources.lswt) pname version src;

  nativeBuildInputs = [wayland];

  buildInputs = [
    wayland-protocols
  ];

  makeFlags = ["PREFIX=$(out)"];

  meta = with lib; {
    homepage = "https://git.sr.ht/~leon_plickat/lswt";
    description = "List Wayland toplevels";
    license = licenses.isc;
    platforms = platforms.linux;
    maintainers = with maintainers; [water-sucks];
  };
}
