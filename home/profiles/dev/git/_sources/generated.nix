# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  git-aliases = {
    pname = "git-aliases";
    version = "13a84be01a0335ab258ef5c0aefd8dc7fe584e23";
    src = fetchFromGitHub {
      owner = "GitAlias";
      repo = "gitalias";
      rev = "13a84be01a0335ab258ef5c0aefd8dc7fe584e23";
      fetchSubmodules = false;
      sha256 = "sha256-CJh/JMcL42IjHLt5S6h8JqvW8sjGaFj7ZP9nW9l5eBw=";
    };
    date = "2025-02-18";
  };
}
