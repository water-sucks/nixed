# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  airtame = {
    pname = "airtame";
    version = "4.12.0";
    src = fetchurl {
      url = "https://downloads.airtame.com/app/latest/linux/Airtame-4.12.0.deb";
      sha256 = "sha256-HTqJ637iPtiReFLoGdgKkpxW0UGRPvLjgMMcVV+cRfY=";
    };
  };
  get-appname = {
    pname = "get-appname";
    version = "c22fd3a9181279d4742578b8d0e279cded82b3f2";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "get-appname";
      rev = "c22fd3a9181279d4742578b8d0e279cded82b3f2";
      fetchSubmodules = false;
      sha256 = "sha256-7kzduIbjsRwGYbYQaSymVOzxuWqqvbC76y2yFuZ9ZxM=";
    };
    date = "2025-01-10";
  };
  java-debug = {
    pname = "java-debug";
    version = "0.53.1";
    src = fetchFromGitHub {
      owner = "microsoft";
      repo = "java-debug";
      rev = "0.53.1";
      fetchSubmodules = false;
      sha256 = "sha256-7h2U0l8OE8VrXymggfQ3XSXacvfBbQKCJmQVSo8J4M0=";
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
}
