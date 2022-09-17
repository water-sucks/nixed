_final: prev: {
  lightdm-slick-greeter = prev.lightdm-slick-greeter.overrideAttrs (_: {
    postFixup = ''
      ln -sf ${../assets/nix.png} $out/share/slick-greeter/badges/unknown.png
    '';
  });
}
