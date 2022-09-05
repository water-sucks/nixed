_final: prev: {
  river = prev.river.overrideAttrs (_: {
    patches = [./change-default-color.patch];

    inherit (prev.sources.river) pname version src;
  });

  wlroots = prev.wlroots.overrideAttrs (_: {
    inherit (prev.sources.wlroots) pname version src;
  });
}
