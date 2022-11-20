{
  lib,
  stdenv,
  substituteAll,
  ...
}:
stdenv.mkDerivation {
  name = "nerdfetch";

  buildCommand = ''
    install -Dm755 $script $out/bin/nerdfetch
  '';

  script = substituteAll {
    src = ./nerdfetch;
    isExecutable = true;
    inherit (stdenv) shell;
  };

  meta = with lib; {
    description = "Modified version of nerdfetch";
    homepage = "https://github.com/ThatOneCalculator/NerdFetch";
    license = licenses.mit;
    platforms = platforms.unix;
  };
}
