_final: prev: {
  # waybar = let
  #   waybar' = prev.waybar.override {
  #     catch2 = prev.catch2.overrideAttrs (oldAttrs: {
  #       inherit (prev.sources.catch2) pname version src;
  #     });
  #   };
  # in
  waybar = prev.waybar.overrideAttrs (oldAttrs: {
    inherit (prev.sources.waybar) pname version src;

    buildInputs =
      oldAttrs.buildInputs
      ++ (with prev; [
        libinput
        jack2
      ]);
  });
}
