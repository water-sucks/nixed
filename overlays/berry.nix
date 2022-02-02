final: prev: {
  berry = prev.berry.overrideAttrs (o: rec {
    inherit (prev.sources.berry) pname version src;
  });
}
