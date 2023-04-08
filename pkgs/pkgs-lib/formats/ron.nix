{
  pkgs,
  lib,
  ...
}: {extensions ? []}:
with lib; let
  toRon = value:
    with builtins;
      if value == null
      then "None"
      else if isBool value
      then boolToString value
      else if isInt value || isFloat value
      then toString value
      else if isString value
      then string value
      else if isList value
      then list value
      else if isAttrs value
      then attrs value
      else abort "formats.ron: should never happen (value = ${value})";

  specialType = {
    value,
    _ronType,
    ...
  } @ args:
    if _ronType == "literal"
    then value
    else if _ronType == "raw_string"
    then rawString value
    else if _ronType == "char"
    then char value
    else if _ronType == "optional"
    then some value
    else if _ronType == "tuple"
    then tuple value
    else if _ronType == "struct"
    then struct args
    else abort "formats.ron: should never happen (_ronType = ${_ronType})";

  escapedValues = escape ["\\" "\""];
  string = value: ''"${escapedValues value}"'';

  listContent = values: concatStringsSep ", " (map toRon values);

  list = values: "[${listContent values}]";

  attrs = set:
    if set ? _ronType
    then specialType set
    else let
      toEntry = n: v: ''${toRon n}: ${toRon v}'';
      entries = concatStringsSep ", " (mapAttrsToList toEntry set);
    in ''{${entries}}'';

  rawString = value: ''r#"${value}"#'';
  char = value: "'${escapedValues value}'";
  some = value: "Some(${toRon value})";
  tuple = values: "(${listContent values})";

  struct = {
    name,
    value,
    ...
  }: let
    toEntry = n: v: ''${n}: ${toRon v}'';
    entries = concatStringsSep ", " (mapAttrsToList toEntry value);
  in
    if stringLength name == 0
    then ''(${entries})''
    else "${name} (${entries})";

  toFile = value:
    if length extensions == 0
    then "${toRon value}"
    else ''
      ${concatStringsSep "\n" extensions}
      ${toRon value}
    '';
in {
  type = with types; let
    valueType =
      nullOr (oneOf [
        bool
        int
        float
        str
        (attrsOf valueType)
        (listOf valueType)
      ])
      // {
        description = "RON value";
      };
  in
    valueType;

  lib = let
    mkType = typeName: value: {
      inherit value;
      _ronType = typeName;
    };
  in rec {
    mkLiteral = mkType "literal";
    rawString = mkType "raw_string";
    char = mkType "character";
    some = mkType "optional";
    enum = mkLiteral;
    tuple = mkType "tuple";
    struct = name: value: {
      inherit value name;
      _ronType = "struct";
    };

    types = {};
  };

  generate = name: value:
    pkgs.runCommand name {
      value = toFile value;
      passAsFile = ["value"];
    } ''
      cp "$valuePath" "$out"
    '';
}
