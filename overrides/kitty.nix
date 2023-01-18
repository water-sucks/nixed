_final: prev: {
  kitty = prev.kitty.overrideAttrs (_: {
    patches = [
      (prev.fetchpatch {
        url = "https://github.com/kovidgoyal/kitty/commit/51bba9110e9920afbefeb981e43d0c1728051b5e.patch";
        sha256 = "sha256-1aSU4aU6j1/om0LsceGfhH1Hdzp+pPaNeWAi7U6VcP4=";
      })
    ];
  });
}
