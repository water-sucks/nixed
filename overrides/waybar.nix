_final: prev: {
  waybar = prev.waybar.overrideAttrs (oldAttrs: {
    inherit (prev.sources.waybar) pname version src;

    buildInputs = oldAttrs.buildInputs ++ [prev.jack2];
  });
}
