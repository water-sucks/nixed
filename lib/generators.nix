lib: let
  importers = import ./importers.nix lib;

  inherit (importers) flattenTree rakeLeaves;

  removeProfileName = name:
    with lib; let
      components = splitString "." name;
    in
      concatStringsSep "."
      (take ((length components) - 1) components);
in rec {
  genModules = with lib;
    args: prefix: directory: let
      tree = rakeLeaves directory;
      leaves' = flattenTree tree;
      leaves = mapAttrs' (n: nameValuePair "${prefix}.${n}") leaves';

      groupNames =
        map
        (n: "${prefix}.${n}")
        (unique
          (mapAttrsToList
            (n: _: removeProfileName n)
            (filterAttrs (n: _: hasInfix "." n) leaves')));
    in
      mapAttrsToList (genProfileOption args) leaves
      ++ (map (n: genGroupOption n tree) groupNames);

  # Move to let expression later.
  genProfileOption = with lib;
    args: location: profile: let
      path = splitString "." location;
      opt = path ++ ["enable"];
    in
      {config, ...}: {
        options = lib.setAttrByPath opt (mkOption {
          type = types.bool;
          default = false;
          description = "Whether to enable ${last path}";
        });

        config =
          mkIf (getAttrFromPath opt config)
          (import profile args);
      };

  genGroupOption = with lib;
    group: tree: let
      path = splitString "." group;
      opt = path ++ ["enable"];

      pathWithoutPrefix = drop 1 path;
    in
      {config, ...}: {
        options = setAttrByPath opt (mkOption {
          type = types.bool;
          default = false;
          description = "Whether to enable ${last path}";
        });

        config =
          mkIf (getAttrFromPath opt config)
          (setAttrByPath path
            (mapAttrs
              (_: _: {enable = mkDefault true;})
              (getAttrFromPath pathWithoutPrefix tree)));
      };
}
