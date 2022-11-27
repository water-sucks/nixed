{
  sources,
  lib,
  stdenv,
  pkg-config,
  meson,
  ninja,
  gtkmm3,
  ...
}:
stdenv.mkDerivation {
  inherit (sources.get-appname) pname version src;

  nativeBuildInputs = [pkg-config meson ninja];
  buildInputs = [gtkmm3];

  meta = with lib; {
    description = "Get an application name from an app ID";
    license = licenses.gpl3;
    platforms = platforms.linux;
    maintainers = with maintainers; [water-sucks];
  };
}
