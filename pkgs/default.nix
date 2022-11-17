final: prev: {
  # keep sources this first
  sources = prev.callPackage (import ./_sources/generated.nix) {};
  # then, call packages with `final.callPackage`
  nerdfetch = final.callPackage ./applications/misc/nerdfetch {};
  plymouth-spinning-watch-theme = final.callPackage ./applications/misc/plymouth-spinning-watch-theme {};
  filen-desktop = final.callPackage ./applications/networking/filen-desktop {};
  rescrobbled = final.callPackage ./tools/audio/rescrobbled {};
  waylock = final.callPackage ./misc/screensavers/waylock {};
  lswt = final.callPackage ./tools/wayland/lswt {};
  waybar-mpris = final.callPackage ./misc/waybar-mpris {};
  airtame = final.callPackage ./applications/misc/airtame {};

  formats = (import ./pkgs-lib {inherit (prev) lib pkgs;}).formats // prev.formats;
}
