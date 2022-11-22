_final: prev: {
  picom = prev.picom.overrideAttrs (_: {
    inherit (prev.sources.picom) pname version src;

    # patches = [
    #   (prev.fetchurl {
    #     url = "https://github.com/ibhagwan/picom/commit/d74c099083487783af7254cb55780ffb20100e53.patch";
    #     sha256 = "sha256-vjF4VXtRVuDENC7Blx2pk/JFYX4J4He6M1D4cavaAac=";
    #   })
    # ];
  });
}
