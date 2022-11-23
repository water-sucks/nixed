_final: prev: {
  nix-zsh-completions = prev.nix-zsh-completions.overrideAttrs (_: {
    postPatch = "rm _nix";
  });
}
