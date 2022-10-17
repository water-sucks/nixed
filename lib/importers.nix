# Functions that are straight-up taken from digga.
# I found them very useful for my own configuration,
# but the rest of digga is just extras I didn't want.
lib: rec {
  flattenTree = tree: let
    op = sum: path: val: let
      pathStr = builtins.concatStringsSep "." path;
    in
      if builtins.isPath val
      then
        (sum
          // {
            "${pathStr}" = val;
          })
      else if builtins.isAttrs val
      then (recurse sum path val)
      else sum;

    recurse = sum: path: val:
      builtins.foldl'
      (sum: key: op sum (path ++ [key]) val.${key})
      sum
      (builtins.attrNames val);
  in
    recurse {} [] tree;

  rakeLeaves = directory: let
    seive = file: type:
      (type == "regular" && lib.hasSuffix ".nix" file) || (type == "directory");

    collect = file: type: {
      name = lib.removeSuffix ".nix" file;
      value = let
        path = directory + "/${file}";
      in
        if
          (type == "regular")
          || (type == "directory" && builtins.pathExists (path + "/default.nix"))
        then path
        else rakeLeaves path;
    };

    files = lib.filterAttrs seive (builtins.readDir directory);
  in
    lib.filterAttrs (_: v: v != {}) (lib.mapAttrs' collect files);
}
