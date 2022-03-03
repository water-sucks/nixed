{ sources, lib, rustPlatform }:

rustPlatform.buildRustPackage rec {
  inherit (sources.asm-lsp) pname version src;

  name = "${pname}-${version}";

  meta = with lib; {
    description = "Language server for NASM/GAS/GO Assembly";
    homepage = "https://github.com/bergercookie/asm-lsp";
    license = [ licenses.unfree ];
    platforms = platforms.all;
  };
}
