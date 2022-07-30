{
  sources,
  lib,
  stdenv,
  pkg-config,
  autoreconfHook,
  gnum4,
  intltool,
  lightdm,
  gtk3,
  vala,
  pixman,
  libcanberra,
  libX11,
  libXext,
  wrapGAppsHook,
  linkFarm,
  lightdm_slick_greeter,
}:
stdenv.mkDerivation rec {
  inherit (sources.lightdm-slick-greeter) pname version src;

  nativeBuildInputs = [gnum4 vala pkg-config autoreconfHook intltool wrapGAppsHook];
  buildInputs = [lightdm gtk3 pixman libcanberra libX11 libXext];

  postPatch = ''
    mkdir m4
  '';

  configureFlags = [
    "--localstatedir=/var"
    "--sysconfdir=/etc"
    "--disable-indicator-services-command"
    "--sbindir=${placeholder "out"}/bin"
  ];

  NIX_CFLAGS_COMPILE = "-Wno-error=deprecated-declarations";

  installFlags = [
    "localstatedir=\${TMPDIR}"
    "sysconfdir=${placeholder "out"}/etc"
  ];

  postInstall = ''
    substituteInPlace "$out/share/xgreeters/slick-greeter.desktop" \
      --replace "Exec=slick-greeter" "Exec=$out/bin/slick-greeter"
  '';

  passthru.xgreeters = linkFarm "lightdm-slick-greeter-xgreeters" [
    {
      path = "${lightdm_slick_greeter}/share/xgreeters/slick-greeter.desktop";
      name = "lightdm-slick-greeter.desktop";
    }
  ];

  meta = with lib; {
    homepage = "https://github.com/linuxmint/slick-greeter";
    platforms = platforms.unix;
    license = licenses.gpl3Only;
  };
}
