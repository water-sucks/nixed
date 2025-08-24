{lib, ...}: {
  options.boot.initrd.luks.devices = lib.mkOption {
    type = lib.types.attrsOf (
      lib.types.submodule (
        _: {
          config = {
            # Disable the limit on the number of tries
            # for typing in LUKS passwords by default
            crypttabExtraOpts = ["tries=0"];
          };
        }
      )
    );
  };
}
