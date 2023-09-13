_final: prev: {
  statix = prev.statix.overrideAttrs (_: {
    patches = [
      (prev.fetchurl {
        url = "https://github.com/nerdypepper/statix/commit/a0c7a3274d32f584d165f06fbaf953568cd0e0e5.patch";
        hash = "sha256-s1M4gDiYcog1Ob4zQzVJC189s5FXvd07Qh1AjU6E3sE=";
      })
    ];
  });
}
