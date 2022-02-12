final: prev: {
  python3 = prev.python3.override {
    packageOverrides = self: super: {
      # Kitty's docgen is fucked up without using an older version
      furo = super.furo.overrideAttrs (o: rec {
        pname = "furo";
        version = "2021.10.9";
        src = super.fetchPypi {
          inherit pname version;
          sha256 = "sha256-K6pCoi7ePm6Vxhgqs2S6wuwVt5vH+cp/sJ/ZrsSzVAw=";
        };
      });
    };
  };
}
