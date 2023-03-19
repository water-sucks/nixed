{pkgs, ...}: {
  hardware.nitrokey.enable = true;

  environment.systemPackages = let
    pynitrokey = pkgs.pynitrokey.override {
      python3Packages = pkgs.python3Packages.override {
        overrides = _self: super: {
          spsdk = super.spsdk.overridePythonAttrs (o: {
            propagatedBuildInputs =
              o.propagatedBuildInputs
              ++ [
                super.typing-extensions
              ];
            pythonRelaxDeps =
              o.pythonRelaxDeps
              ++ [
                "typing-extensions"
                "pycryptodome"
              ];
          });
        };
      };
    };
  in [
    pynitrokey
  ];
}
