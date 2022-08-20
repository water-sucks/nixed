final: prev: {
  # keep sources this first
  sources = prev.callPackage (import ./_sources/generated.nix) {};
  # then, call packages with `final.callPackage`
  nerdfetch = final.callPackage ./applications/misc/nerdfetch {};
  plymouth-spinning-watch-theme = final.callPackage ./applications/misc/plymouth-spinning-watch-theme {};
  filen-desktop = final.callPackage ./applications/networking/filen-desktop {};
  rescrobbled = final.callPackage ./tools/audio/rescrobbled {};
  lightdm_slick_greeter = final.callPackage ./applications/display-managers/lightdm/slick-greeter.nix {};
}
