# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub }:
{
  manix = {
    pname = "manix";
    version = "d08e7ca185445b929f097f8bfb1243a8ef3e10e4";
    src = fetchFromGitHub ({
      owner = "mlvzk";
      repo = "manix";
      rev = "d08e7ca185445b929f097f8bfb1243a8ef3e10e4";
      fetchSubmodules = false;
      sha256 = "sha256-GqPuYscLhkR5E2HnSFV4R48hCWvtM3C++3zlJhiK/aw=";
    });
  };
  picom = {
    pname = "picom";
    version = "v8";
    src = fetchFromGitHub ({
      owner = "jonaburg";
      repo = "picom";
      rev = "v8";
      fetchSubmodules = false;
      sha256 = "sha256-JYVk7mq9K9wm/WLDy/q7ghrVcigkGUWT9QiPs89eWxM=";
    });
  };
  simplefox-theme = {
    pname = "simplefox-theme";
    version = "a4c1ec7d2af121047f09da4a572960e032ca29a6";
    src = fetchFromGitHub ({
      owner = "migueravila";
      repo = "SimpleFox";
      rev = "a4c1ec7d2af121047f09da4a572960e032ca29a6";
      fetchSubmodules = false;
      sha256 = "sha256-iNILXnOZYbzy2/HcUpyiq6VOLA2C6fogAAwSWsTun1U=";
    });
  };
  tidal-hifi = {
    pname = "tidal-hifi";
    version = "2.7.1";
    src = fetchurl {
      url = "https://github.com/Mastermindzh/tidal-hifi/releases/download/2.7.1/tidal-hifi_2.7.1_amd64.deb";
      sha256 = "sha256-0ua6Wd1OzC1+eKko8HcOsKDkEDfanTBsUHLmZLR7GZk=";
    };
  };
}
