final: prev: {
  picom = prev.picom.overrideAttrs (o: rec {
    inherit (prev.sources.picom) pname version src;
  });
}
