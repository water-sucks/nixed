{
  lib,
  unzip,
  stdenvNoCC,
  nerd-font-patcher,
  ...
}:
stdenvNoCC.mkDerivation {
  pname = "berkeley-mono";
  version = "1";

  src = ./berkeley-mono.zip;

  nativeBuildInputs = [
    unzip
    nerd-font-patcher
  ];

  unpackPhase = ''
    unzip $src
  '';

  buildPhase = ''
    mkdir patched-fonts

    for f in berkeley-mono/OTF/*.otf; do
      nerd-font-patcher -c $f -out patched-fonts
    done

    for f in berkeley-mono/TTF/*.ttf; do
      nerd-font-patcher -c $f -out patched-fonts
    done
  '';

  installPhase = ''
    mkdir -p $out/share/fonts/{opentype,truetype}/berkeley-mono

    mv patched-fonts/*.ttf $out/share/fonts/truetype/berkeley-mono
    mv patched-fonts/*.otf $out/share/fonts/opentype/berkeley-mono
  '';

  meta = {
    description = "Berkeley Mono Typeface";
    longDescription = "…";
    homepage = "https://berkeleygraphics.com/typefaces/berkeley-mono";
    license = lib.licenses.unfree;
    platforms = lib.platforms.all;
  };
}
