# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  fast-syntax-highlighting = {
    pname = "fast-syntax-highlighting";
    version = "v1.55";
    src = fetchFromGitHub {
      owner = "zdharma-continuum";
      repo = "fast-syntax-highlighting";
      rev = "v1.55";
      fetchSubmodules = false;
      sha256 = "sha256-DWVFBoICroKaKgByLmDEo4O+xo6eA8YO792g8t8R7kA=";
    };
  };
  zsh-autosuggestions = {
    pname = "zsh-autosuggestions";
    version = "v0.7.0";
    src = fetchFromGitHub {
      owner = "zsh-users";
      repo = "zsh-autosuggestions";
      rev = "v0.7.0";
      fetchSubmodules = false;
      sha256 = "sha256-KLUYpUu4DHRumQZ3w59m9aTW6TBKMCXl2UcKi4uMd7w=";
    };
  };
}
