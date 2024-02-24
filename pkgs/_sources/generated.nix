# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  airtame = {
    pname = "airtame";
    version = "4.8.0";
    src = fetchurl {
      url = "https://downloads.airtame.com/app/latest/linux/Airtame-4.8.0.deb";
      sha256 = "sha256-Op9AkkYpBHdEH7UWK8Sbe4BoZUwruv9I8OVdo3oF+74=";
    };
  };
  get-appname = {
    pname = "get-appname";
    version = "df5166cab236b4220ec01edf5527c9c6a4487a8f";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "get-appname";
      rev = "df5166cab236b4220ec01edf5527c9c6a4487a8f";
      fetchSubmodules = false;
      sha256 = "sha256-MTTbuNJTs4m7TM2LIKIWd1j7c95Mea2tZwoxcrQLrzw=";
    };
    date = "2023-02-23";
  };
  java-debug = {
    pname = "java-debug";
    version = "0.51.1";
    src = fetchFromGitHub {
      owner = "microsoft";
      repo = "java-debug";
      rev = "0.51.1";
      fetchSubmodules = false;
      sha256 = "sha256-GGyRNGnPBRrZ/o/VyQItNpxxSdiEwCE1Kmqg2XX4Ew0=";
    };
  };
  nsmb-mvl = {
    pname = "nsmb-mvl";
    version = "v1.7.1.0-beta";
    src = fetchurl {
      url = "https://github.com/ipodtouch0218/NSMB-MarioVsLuigi/releases/download/v1.7.1.0-beta/MarioVsLuigi-Linux-v1.7.1.0-beta.zip";
      sha256 = "sha256-rb9vZ3w4BfzygsdOCPLVX87T5tBXk6Aw+ba9I12fhwQ=";
    };
  };
  rescrobbled = {
    pname = "rescrobbled";
    version = "v0.7.1";
    src = fetchFromGitHub {
      owner = "InputUsername";
      repo = "rescrobbled";
      rev = "v0.7.1";
      fetchSubmodules = false;
      sha256 = "sha256-1E+SeKjHCah+IFn2QLAyyv7jgEcZ1gtkh8iHgiVBuz4=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./rescrobbled-v0.7.1/Cargo.lock;
      outputHashes = {
      };
    };
  };
  vics-mvlo = {
    pname = "vics-mvlo";
    version = "v17.0.10-mini";
    src = fetchurl {
      url = "https://github.com/vlcoo/VicMvsLO/releases/download/v17.0.10-mini/linux-vcmi.zip";
      sha256 = "sha256-QGIM+Qz3iaL3O24ZZJFx7UEACMHJedZC5m6WO3zhFoY=";
    };
  };
}
