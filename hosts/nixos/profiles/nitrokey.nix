{pkgs, ...}: {
  hardware.nitrokey.enable = true;

  environment.systemPackages = let
    python3Packages = pkgs.python3Packages.override {
      overrides = _final: prev: {
        spsdk = prev.spsdk.overridePythonAttrs (o: rec {
          version = "1.11.0";
          src = pkgs.fetchFromGitHub {
            owner = "nxp-mcuxpresso";
            repo = o.pname;
            rev = "refs/tags/${version}";
            hash = "sha256-B3qedAXSG3A8rcWu1O2GnZ1ZqHN+7fQK43qXzGnDEY0=";
          };

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
