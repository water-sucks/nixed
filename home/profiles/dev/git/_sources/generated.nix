# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  git-aliases = {
    pname = "git-aliases";
    version = "b56365b13a318b544ecb0df112bbbd12c4e61bce";
    src = fetchFromGitHub {
      owner = "GitAlias";
      repo = "gitalias";
      rev = "b56365b13a318b544ecb0df112bbbd12c4e61bce";
      fetchSubmodules = false;
      sha256 = "sha256-CdjSugU06nOiRBWx/CrLKlLRUi3OQWAuhe/pV+BgRb8=";
    };
    date = "2024-09-21";
  };
}
