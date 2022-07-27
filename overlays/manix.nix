_final: prev: {
  manix = prev.manix.overrideAttrs (_: rec {
    inherit (prev.sources.manix) pname version src;
  });
}
