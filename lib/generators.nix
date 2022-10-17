lib: let
  importers = import ./importers.nix lib;

  inherit (importers) flattenTree rakeLeaves;
in rec {
  genModules = with lib;
    args: prefix: directory: let
      leaves' = flattenTree (rakeLeaves directory);
      leaves = mapAttrs' (n: nameValuePair "${prefix}.${n}") leaves';
      # groupAttrs = filterAttrs (n: _: hasInfix "." n) leaves';
    in
      mapAttrsToList (genProfileOption args) leaves;

  # Move to let expression later.
  genProfileOption = with lib;
    args: location: profile: let
      path = splitString "." location;
    in
      {config, ...}: {
        options = lib.setAttrByPath path (mkOption {
          type = types.bool;
          default = false;
          description = "Whether to enable ${last path}";
        });

        config =
          mkIf (getAttrFromPath path config)
          (import profile args);
      };

  # genGroupOption = with lib;
  #   args: group: default: let
  #     path = splitString "." location;
  #   in {
  #     options = lib.setAttrByPath (reverseList path) (mkOption {
  #       type = types.bool;
  #       inherit default;
  #       description = "Whether to enable all profiles in group ${head (tail path)}";
  #     });
  #
  #     config = mkIf (getAttrFromPath (reverseList path) args.config)
  #     (genAttrs (attrNames values));
  #   };
}
