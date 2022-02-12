final: prev: {
  hikari = prev.hikari.overrideAttrs (o: rec {
    passthru.providedSessions = [ "hikari" ];
  });
}
