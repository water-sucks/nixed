# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  git-aliases = {
    pname = "git-aliases";
    version = "ddb75f099f4a60205bc16eef3428de77084b945f";
    src = fetchFromGitHub {
      owner = "GitAlias";
      repo = "gitalias";
      rev = "ddb75f099f4a60205bc16eef3428de77084b945f";
      fetchSubmodules = false;
      sha256 = "sha256-Bzp2rT0zcVUdn61FQXq+kOLjcb0/FhuwA33K/uzAa9I=";
    };
    date = "2024-08-24";
  };
}
