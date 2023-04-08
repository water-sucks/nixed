{
  pkgs,
  lib,
  ...
}: _:
with lib; let
  mkEntry = name: entry: let
    wrapQuotes = v: ''"${v}"'';

    convert = v:
      if builtins.isBool v
      then lib.boolToString v
      else if builtins.isString v
      then wrapQuotes v
      else if builtins.isList v
      then ''[${concatStringsSep ", " (map wrapQuotes v)}]''
      else if builtins.isAttrs v
      then "{${concatStringsSep ", " (mapAttrsToList (k: v': "${k} = ${wrapQuotes v'}") v)}}"
      else abort "formats.nvfetcherToml: should never happen (value = ${value})";

    keyValuePairs =
      concatStringsSep "\n"
      (mapAttrsToList
        (k: v: "${k} = ${convert v}")
        entry);
  in ''
    [${name}]
    ${keyValuePairs}
  '';

  toFile = value: concatStringsSep "\n" (mapAttrsToList mkEntry value);
in {
  type = with types;
    attrsOf (attrsOf (oneOf [
      str # general options are always strings
      bool # Git options
      (attrsOf str) # passthru option
      (listOf str) # extract, cargo_locks options
    ]))
    // {
      description = "TOML string or boolean";
    };

  lib = {};

  generate = name: value:
    pkgs.runCommand name {
      value = toFile value;
      passAsFile = ["value"];
    } ''
      cp "$valuePath" "$out"
    '';
}
