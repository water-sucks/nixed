# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  airtame = {
    pname = "airtame";
    version = "4.5.3";
    src = fetchurl {
      url = "https://downloads.airtame.com/app/latest/linux/Airtame-4.5.3.deb";
      sha256 = "sha256-QZBDjzecWoOXa9giBkeg7Vr9VtqnwdpcI8ZpV4NC8yk=";
    };
  };
  filen-desktop = {
    pname = "filen-desktop";
    version = "2.0.14";
    src = fetchurl {
      url = "https://cdn.filen.io/desktop/release/2.0.14/filen_x86_64.AppImage";
      sha256 = "sha256-UA39m5jYQqCo47et/woStjBGq3hQ8fVav2qZKI391S4=";
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
  picom = {
    pname = "picom";
    version = "c4107bb6cc17773fdc6c48bb2e475ef957513c7a";
    src = fetchFromGitHub {
      owner = "ibhagwan";
      repo = "picom";
      rev = "c4107bb6cc17773fdc6c48bb2e475ef957513c7a";
      fetchSubmodules = false;
      sha256 = "sha256-1hVFBGo4Ieke2T9PqMur1w4D0bz/L3FAvfujY9Zergw=";
    };
    date = "2021-11-03";
  };
  polybar = {
    pname = "polybar";
    version = "8cc1b4fcfda58d64921476b9599c84064815d3a4";
    src = fetchFromGitHub {
      owner = "polybar";
      repo = "polybar";
      rev = "8cc1b4fcfda58d64921476b9599c84064815d3a4";
      fetchSubmodules = true;
      sha256 = "sha256-rfr4NJ/fK5Vr/mQmAYtOYjKx13V8Fp2lD5tzB+cY4d4=";
    };
    date = "2023-02-13";
  };
  rescrobbled = {
    pname = "rescrobbled";
    version = "v0.6.2";
    src = fetchFromGitHub {
      owner = "InputUsername";
      repo = "rescrobbled";
      rev = "v0.6.2";
      fetchSubmodules = false;
      sha256 = "sha256-g6YGqphXB3dI3gnxw7MtTs1c5mIf6CFdfg2KjEVJhDU=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./rescrobbled-v0.6.2/Cargo.lock;
      outputHashes = {
      };
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
