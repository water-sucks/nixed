# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  cascade-theme = {
    pname = "cascade-theme";
    version = "c1158d400f107975008d590cf16a8ee54a90097e";
    src = fetchFromGitHub {
      owner = "andreasgrafen";
      repo = "cascade";
      rev = "c1158d400f107975008d590cf16a8ee54a90097e";
      fetchSubmodules = false;
      sha256 = "sha256-DIyxTxen6pLXJLRCu7ZilDXF70NloAaT3QkHndlsfr0=";
    };
    date = "2023-08-20";
  };
}
