{
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
}
