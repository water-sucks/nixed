_final: prev: {
  direnv = prev.direnv.overrideAttrs (_: {
    patches = [
      (prev.fetchurl {
        url = "https://github.com/tjcrone/direnv/commit/39856b6c266392aac08cdc25eb7f0c88b851fd1b.patch";
        sha256 = "13fzp864qi0bb11yxj18xqsrxkh2x0z37v3gf8krc0jmfsg5hm5i";
      })
    ];
  });
}
