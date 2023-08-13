_final: prev: {
  direnv = prev.direnv.overrideAttrs (_: {
    patches = [
      (prev.fetchurl {
        url = "https://github.com/tjcrone/direnv/commit/39856b6c266392aac08cdc25eb7f0c88b851fd1b.patch";
        hash = "sha256-xSjTjamNpArp2/u9FspPU6dN7Lt83UUzuS5Cs4u/Gns=";
      })
    ];
  });
}
