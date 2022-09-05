_final: prev: {
  wob = prev.wob.overrideAttrs (oldAttrs: {
    inherit (prev.sources.wob) pname version src;

    buildInputs = oldAttrs.buildInputs ++ [prev.inih];
  });
}
