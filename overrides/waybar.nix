final: prev: {
  catch2 = prev.catch2.overrideAttrs (oldAttrs: {
    inherit (prev.sources.catch2) pname version src;
  });

  waybar = prev.waybar.overrideAttrs (oldAttrs: {
    inherit (prev.sources.waybar) pname version src;

    buildInputs =
      oldAttrs.buildInputs
      ++ (with prev; [
        libinput
        jack2
        final.catch2
      ]);
  });
}
