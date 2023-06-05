# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  airtame = {
    pname = "airtame";
    version = "4.6.3";
    src = fetchurl {
      url = "https://downloads.airtame.com/app/latest/linux/Airtame-4.6.3.deb";
      sha256 = "sha256-vU04EtfYk6iK9g9v+QmxaD1naRKllPbGNqOydds4HPo=";
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
  nsmb-mvl = {
    pname = "nsmb-mvl";
    version = "v1.7.1.0-beta";
    src = fetchurl {
      url = "https://github.com/ipodtouch0218/NSMB-MarioVsLuigi/releases/download/v1.7.1.0-beta/MarioVsLuigi-Linux-v1.7.1.0-beta.zip";
      sha256 = "sha256-rb9vZ3w4BfzygsdOCPLVX87T5tBXk6Aw+ba9I12fhwQ=";
    };
  };
  polybar = {
    pname = "polybar";
    version = "2cd0809a46ac84a6a6ae44cd0129bac014f452f0";
    src = fetchFromGitHub {
      owner = "polybar";
      repo = "polybar";
      rev = "2cd0809a46ac84a6a6ae44cd0129bac014f452f0";
      fetchSubmodules = true;
      sha256 = "sha256-CKWQcDUu9p8a/Tjli0+Lx/ce9VpOceFh4FeaEA16ytc=";
    };
    date = "2023-05-18";
  };
  rescrobbled = {
    pname = "rescrobbled";
    version = "v0.7.0";
    src = fetchFromGitHub {
      owner = "InputUsername";
      repo = "rescrobbled";
      rev = "v0.7.0";
      fetchSubmodules = false;
      sha256 = "sha256-+/EuzkO+ZrnUzmX49N7xEYzQN2hRQEtsN7Ttb8yV4UQ=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./rescrobbled-v0.7.0/Cargo.lock;
      outputHashes = {
      };
    };
  };
  vics-mvlo = {
    pname = "vics-mvlo";
    version = "v17.0.8";
    src = fetchurl {
      url = "https://github.com/vlcoo/VicMvsLO/releases/download/v17.0.8/linux.zip";
      sha256 = "sha256-jNb5sMxbOnm5ux91vDVDAiRW8pZh37GM/tNP4ekMkGQ=";
    };
  };
  waybar-mpris = {
    pname = "waybar-mpris";
    version = "1233aa9f90d75ec2bbd82afde757309fd9abab3a";
    src = fetchFromGitHub {
      owner = "b10n";
      repo = "waybar-mpris";
      rev = "1233aa9f90d75ec2bbd82afde757309fd9abab3a";
      fetchSubmodules = false;
      sha256 = "sha256-CV8hNW/KMFKfxe126ENV5h6qhypU9bz3u3DnTFa/94I=";
    };
    date = "2022-01-09";
  };
  wob = {
    pname = "wob";
    version = "0.14.2";
    src = fetchFromGitHub {
      owner = "francma";
      repo = "wob";
      rev = "0.14.2";
      fetchSubmodules = false;
      sha256 = "sha256-u4jLVLGcMTgDEgN8jW5d59m3GorJX7Z6+qKhzvbON3k=";
    };
  };
}
