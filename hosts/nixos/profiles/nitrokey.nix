{pkgs, ...}: {
  hardware.nitrokey.enable = true;

  environment.systemPackages = let
    python3Packages = pkgs.python3Packages.override {
      overrides = _final: prev: {
        spsdk =
          (prev.spsdk.override {
            pyocd = prev.pyocd.overridePythonAttrs (o: {
              propagatedBuildInputs = o.propagatedBuildInputs ++ (with prev; [importlib-metadata importlib-resources lark]);
            });
          })
          .overridePythonAttrs (o: {
            nativeCheckInputs =
              o.nativeCheckInputs
              ++ (with prev; [
                importlib-metadata
                pyftdi
              ]);

            pythonRelaxDeps =
              o.pythonRelaxDeps
              ++ [
                # Leave this here, because it is common to relax
                # deps for this package.
                "cryptography"
              ];
          });
      };
    };

    pynitrokey =
      (pkgs.pynitrokey.override {
        inherit python3Packages;
      })
      .overridePythonAttrs (o: {
        pythonRelaxDeps = o.pythonRelaxDeps ++ ["click"];
        propagatedBuildInputs =
          o.propagatedBuildInputs
          ++ [
            python3Packages.importlib-metadata
          ];
      });
  in [
    pynitrokey
  ];
}
