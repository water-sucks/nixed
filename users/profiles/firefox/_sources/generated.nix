# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
}: {
  i2p-profile = {
    pname = "i2p-profile";
    version = "6c33b34a4048b6400cdd2771f457bbc40e083e7f";
    src = fetchFromGitHub {
      owner = "i2p";
      repo = "i2p.firefox";
      rev = "6c33b34a4048b6400cdd2771f457bbc40e083e7f";
      fetchSubmodules = false;
      sha256 = "sha256-1C0p/xMgBhp/B0DYgcphomFTxYsU43q4c5ICXr0BpYY=";
    };
  };
  simplefox-theme = {
    pname = "simplefox-theme";
    version = "a4c1ec7d2af121047f09da4a572960e032ca29a6";
    src = fetchFromGitHub {
      owner = "migueravila";
      repo = "SimpleFox";
      rev = "a4c1ec7d2af121047f09da4a572960e032ca29a6";
      fetchSubmodules = false;
      sha256 = "sha256-iNILXnOZYbzy2/HcUpyiq6VOLA2C6fogAAwSWsTun1U=";
    };
  };
}
