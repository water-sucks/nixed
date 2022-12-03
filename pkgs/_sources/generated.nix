# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
}: {
  airtame = {
    pname = "airtame";
    version = "4.5.2";
    src = fetchurl {
      url = "https://downloads.airtame.com/app/latest/linux/Airtame-4.5.2.deb";
      sha256 = "sha256-H4sVs8xEAduDjIngy92c+q149e6lCbzWXkFgA1GpMMU=";
    };
  };
  filen-desktop = {
    pname = "filen-desktop";
    version = "2.0.7";
    src = fetchurl {
      url = "https://cdn.filen.io/desktop/release/2.0.7/filen_x86_64.AppImage";
      sha256 = "sha256-OuoHwCA3htOfI6HgHDcoD7Qf9s7Dd0XSGTrszeXwa/8=";
    };
  };
  get-appname = {
    pname = "get-appname";
    version = "b41b4e791c2382c2f00f4a1633eecb5771838f19";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "get-appname";
      rev = "b41b4e791c2382c2f00f4a1633eecb5771838f19";
      fetchSubmodules = false;
      sha256 = "sha256-6hqgN0gafw/BT/Gwqc/CO8J/Su83jcdG9FrD9fCzGC8=";
    };
  };
  lswt = {
    pname = "lswt";
    version = "ed1ae054d9af3c345f9f2c2003d179932c0c6b60";
    src = fetchgit {
      url = "https://git.sr.ht/~leon_plickat/lswt";
      rev = "ed1ae054d9af3c345f9f2c2003d179932c0c6b60";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-Tiua9M2CJsYfmtmRXgR9ofmhwP8pRiYGbJdlBThWKMM=";
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
  };
  polybar = {
    pname = "polybar";
    version = "d5498c8a8a4b2c332eaa7855eb88f3e3432edaed";
    src = fetchFromGitHub {
      owner = "polybar";
      repo = "polybar";
      rev = "d5498c8a8a4b2c332eaa7855eb88f3e3432edaed";
      fetchSubmodules = true;
      sha256 = "sha256-hULLHRVFWPP114PWW8z2LRobDTe+NZnaR9ow6yN7ez8=";
    };
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
  river = {
    pname = "river";
    version = "e603c5460a27bdc8ce6c32c8ee5e53fb789bc10b";
    src = fetchFromGitHub {
      owner = "riverwm";
      repo = "river";
      rev = "e603c5460a27bdc8ce6c32c8ee5e53fb789bc10b";
      fetchSubmodules = true;
      sha256 = "sha256-x971VRWp72uNRNcBTU2H81EiqWa5kg0E5n7tK8ypaQM=";
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
