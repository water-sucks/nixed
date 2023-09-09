_final: prev: {
  nvfetcher = prev.nvfetcher.overrideAttrs (_: {
    __contentAddressed = true;
  });
}
