# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  git-aliases = {
    pname = "git-aliases";
    version = "95d5fda20a33e64729c6fbcaae98e3f6448ab45f";
    src = fetchFromGitHub {
      owner = "GitAlias";
      repo = "gitalias";
      rev = "95d5fda20a33e64729c6fbcaae98e3f6448ab45f";
      fetchSubmodules = false;
      sha256 = "sha256-2q9G5i9VMfqpIJULHaWlpQoc+uTEHbop6xHy+fIefiA=";
    };
    date = "2023-10-18";
  };
}
