# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
}: {
  filen-desktop = {
    pname = "filen-desktop";
    version = "2.0.3";
    src = fetchurl {
      url = "https://cdn.filen.io/desktop/release/2.0.3/filen_x86_64.AppImage";
      sha256 = "sha256-k4CpISmTXYp0mVLPX2ep4dKr3KIaqJql2vNmUCmlBJs=";
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
  rescrobbled = {
    pname = "rescrobbled";
    version = "v0.6.0";
    src = fetchFromGitHub {
      owner = "InputUsername";
      repo = "rescrobbled";
      rev = "v0.6.0";
      fetchSubmodules = false;
      sha256 = "sha256-RzqufEucBwhTW+ZjhlLgEZwYZ9QSgMtBd9A62JhqW94=";
    };
    cargoLock."./Cargo.lock" = {
      lockFile = ./rescrobbled-v0.6.0/./Cargo.lock;
      outputHashes = {
      };
    };
  };
  river = {
    pname = "river";
    version = "4ba7f80f8dc29b799859c0a32eb407c232636943";
    src = fetchFromGitHub {
      owner = "riverwm";
      repo = "river";
      rev = "4ba7f80f8dc29b799859c0a32eb407c232636943";
      fetchSubmodules = true;
      sha256 = "sha256-Q4eu4PleVXqJPvmJePcKO0bE1ro37xfXhqaLZb7QRuw=";
    };
  };
  waybar = {
    pname = "waybar";
    version = "4deb6d812d6a34c84b3d4b053c1d9673bc2864d7";
    src = fetchFromGitHub {
      owner = "Alexays";
      repo = "Waybar";
      rev = "4deb6d812d6a34c84b3d4b053c1d9673bc2864d7";
      fetchSubmodules = false;
      sha256 = "sha256-nYxRKO7oHpiCH7DgSHDxnrPi5y2CRXpegSer1dQOLTo=";
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
  waylock = {
    pname = "waylock";
    version = "v0.4.1";
    src = fetchFromGitHub {
      owner = "ifreund";
      repo = "waylock";
      rev = "v0.4.1";
      fetchSubmodules = true;
      sha256 = "sha256-bV2wHuLxRP478Lap8cB3pYI/98DlxknYFgqgG4S44gY=";
    };
  };
  wlroots = {
    pname = "wlroots";
    version = "96ebf7426096f4d4ca08934377195def706c8243";
    src = fetchgit {
      url = "https://gitlab.freedesktop.org/ifreund/wlroots";
      rev = "96ebf7426096f4d4ca08934377195def706c8243";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-cDt45vkgl1cq5avyMuZ94zdWyWmKWtUQ6/VzuSpP4y4=";
    };
  };
  wob = {
    pname = "wob";
    version = "dcf9bcf73cdc5204c6fc2a08f60ed64ebac38980";
    src = fetchFromGitHub {
      owner = "francma";
      repo = "wob";
      rev = "dcf9bcf73cdc5204c6fc2a08f60ed64ebac38980";
      fetchSubmodules = false;
      sha256 = "sha256-3O2RdoL8FjOgO2SZG5j1S8Qq82CN3owCLkqCk/0w2ks=";
    };
  };
}
