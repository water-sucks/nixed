{
  sources,
  stdenv,
  lib,
  makeWrapper,
  maven,
}:
maven.buildMavenPackage {
  inherit (sources.java-debug) pname src version;

  patches = [./tycho.patch];

  mvnHash =
    if stdenv.isDarwin
    then "sha256-zIcoQd/XUMF5yjjpmJ+R9QcS7bjxmza592uWyiKgYgU="
    else "sha256-4iz3Vj8t5ouQKdrIwAyDJ4tZI6k/0Ys0kBtT0ZWh+bI=";

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
