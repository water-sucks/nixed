{
  sources,
  lib,
  makeWrapper,
  maven,
}:
maven.buildMavenPackage rec {
  inherit (sources.java-debug) pname src version;

  patches = [./tycho.patch];

  mvnHash = "sha256-+NvM4eD8X204sYGbCD5cBuTY4d/eI9gHQwl+bd2DQzg=";

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
