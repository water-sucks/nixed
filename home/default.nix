{self, ...}: {
  flake = {
    homeModules = self.lib.importModules ./modules;
  };
}
