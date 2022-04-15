final: prev: {
  deadnix = prev.deadnix.overrideAttrs (o: rec {
    src = prev.pkgs.fetchFromGitHub {
      owner = "astro";
      repo = "deadnix";
      rev = "0f78b370f0aab6f9512fa243e7a9da595b44f63b";
      sha256 = "sha256-TCGbFi0VbooyBv9vyOt1qtBFmTsQXH8sPOdMh9agMGU=";
    };
    cargoBuildFeatures = o.cargoBuildFeatures ++ [ "json-out" ];
    cargoDeps = o.cargoDeps.overrideAttrs (o: {
      inherit src;
      outputHash = "sha256-A3i8YfmoFkcI/uUbaOIv4oCqnIqIiZtMH0ksOE2SSmk=";
    });
  });
}
