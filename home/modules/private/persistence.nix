({lib, ...}: {
  options.persistence.directory = lib.mkOption {
    type = lib.types.str;
    description = "Base persistence directory";
  };
})
