{self, ...}: {
  flake = let
    modules' = self.lib.importModules ./modules;
    modules = builtins.removeAttrs modules' ["persistence"];
  in {
    homeModules = modules;
  };
}
