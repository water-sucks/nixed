{
  self,
  lib,
  ...
}:
with lib; let
  inherit (self.lib) flattenTree rakeLeaves;

  moduleName = name: let
    path = splitString "." name;
  in
    last path;
in {
  flake = {
    homeModules = mapAttrs' (n: nameValuePair (moduleName n)) (flattenTree (rakeLeaves ./modules));
  };
}
