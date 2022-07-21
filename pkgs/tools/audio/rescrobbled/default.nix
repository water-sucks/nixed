{ sources, lib, stdenv, rustPlatform, pkg-config, dbus, openssl }:

rustPlatform.buildRustPackage rec {
  inherit (sources.rescrobbled) pname version src;

  cargoLock = sources.rescrobbled.cargoLock."./Cargo.lock";

  postPatch = ''
    substituteInPlace src/filter.rs --replace '#!/usr/bin/bash' '#!${stdenv.shell}'
  '';

  nativeBuildInputs = [ pkg-config ];

  buildInputs = [ dbus openssl ];

  meta = with lib; {
    description = "MPRIS music scrobbler daemon";
    homepage = "https://github.com/InputUsername/rescrobbled";
    license = licenses.gpl3Plus;
    platforms = platforms.unix;
  };
}
