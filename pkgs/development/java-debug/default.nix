{
  sources,
  lib,
  makeWrapper,
  maven,
  ...
}:
maven.buildMavenPackage {
  inherit (sources.java-debug) pname src version;

  patches = [./tycho.patch];

  mvnHash = "sha256-jFyB4StM4qsaf5caxaMs8QTFnF2hHrEAb+m/dnGN7vc=";

  installPhase = ''
    mkdir $out

    cp -rv com.microsoft.java.debug.{core,plugin,repository,target} $out
  '';

  nativeBuildInputs = [makeWrapper];

  meta = with lib; {
    description = "The debug server implementation for Java";
    homepage = "https://github.com/microsoft/java-debug";
    license = licenses.epl10;
    maintainers = with maintainers; [water-sucks];
  };
}
