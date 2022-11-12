_final: prev: {
  sudo = prev.sudo.override {
    withInsults = true;
  };
}
