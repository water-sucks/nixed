_final: prev: {
  tidal-hifi = prev.tidal-hifi.overrideAttrs (oldAttrs: {
    postFixup =
      oldAttrs.postFixup
      + ''
        substituteInPlace $out/share/applications/tidal-hifi.desktop \
          --replace "Exec=/opt/tidal-hifi/tidal-hifi" "Exec=$out/bin/tidal-hifi" \
          --replace "Name=tidal-hifi" "Name=TIDAL"
      '';
  });
}
