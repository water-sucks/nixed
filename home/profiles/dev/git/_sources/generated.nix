# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  git-aliases = {
    pname = "git-aliases";
    version = "7b941c3abbcee391b6bfc4f8d6b8372064245b49";
    src = fetchFromGitHub {
      owner = "GitAlias";
      repo = "gitalias";
      rev = "7b941c3abbcee391b6bfc4f8d6b8372064245b49";
      fetchSubmodules = false;
      sha256 = "sha256-IvHM6mRtoeVm01cUmTkKqjm6/n3Izau89B7MT69Afo0=";
    };
    date = "2024-03-15";
  };
}
