_final: prev: {
  leftwm = prev.leftwm.overrideAttrs (_: let
    rpathLibs = with prev.xorg; [libXinerama libX11];
  in {
    postInstall = ''
      for p in $out/bin/left*; do
        patchelf --set-rpath "${prev.lib.makeLibraryPath rpathLibs}" $p
      done
    '';
  });
}
