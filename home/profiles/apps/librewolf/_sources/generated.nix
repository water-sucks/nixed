# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  arcadia-theme = {
    pname = "arcadia-theme";
    version = "3f58caf98cfb320049ce382aa6fb4df558430c85";
    src = fetchFromGitHub {
      owner = "tyrohellion";
      repo = "arcadia";
      rev = "3f58caf98cfb320049ce382aa6fb4df558430c85";
      fetchSubmodules = false;
      sha256 = "sha256-FDei9LoAZ7Zss3ZQyto9jj0OhcN6q6kNdHvTa0x3Veg=";
    };
    date = "2025-03-06";
  };
}
