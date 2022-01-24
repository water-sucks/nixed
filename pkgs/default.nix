final: prev: {
  # keep sources this first
  sources = prev.callPackage (import ./_sources/generated.nix) { };
  # then, call packages with `final.callPackage`
  simplefox-theme = final.callPackage ./applications/networking/browsers/firefox/simplefox-theme { };
}
