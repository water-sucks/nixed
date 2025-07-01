{
  self,
  lib,
  ...
}: {
  flake = let
    modules' = let
      set = self.lib.importModules ./modules;
    in
      lib.filterAttrs (_: loc: !(lib.hasInfix "modules/private" (toString loc))) set;

    modules = builtins.removeAttrs (builtins.trace modules' modules') ["persistence"];
  in {
    homeModules = modules;
  };
}
