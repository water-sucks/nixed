{
  pkgs,
  lib,
  ...
}: {
  virtualisation.vmware = {
    host = {
      enable = true;
      package = pkgs.vmware-workstation.overrideAttrs (o: let
        oldBuildInputs = lib.filter (p: p.pname != "gdbm") o.buildInputs;
      in {
        buildInputs = oldBuildInputs ++ [pkgs.gdbm];
      });
    };
  };
}
