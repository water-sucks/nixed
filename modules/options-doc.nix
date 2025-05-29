{
  lib,
  options,
  ...
}: {
  flake = {
    options-doc = lib.optionAttrSetToDocList options;
  };
}
