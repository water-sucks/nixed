_final: prev: {
  polybar = prev.polybar.overrideAttrs (_: {
    inherit (prev.sources.polybar) pname src version;
  });
}
