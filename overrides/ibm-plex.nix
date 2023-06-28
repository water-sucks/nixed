_final: prev: {
  # Temporary overlay for IBM Plex, should be removed.
  ibm-plex = prev.ibm-plex.overrideAttrs (_: rec {
    version = "6.2.0";

    src = prev.fetchzip {
      url = "https://github.com/IBM/plex/releases/download/v${version}/OpenType.zip";
      hash = "sha256-RvD/aeZrvltJiuAHqYMNaRsjLgTdcC1/5zqlcd4qKAA=";
    };
  });
}
