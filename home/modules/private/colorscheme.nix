{lib, ...}: {
  options = {
    colorscheme.palette = lib.mkOption {
      description = "Named colors";
      type = with lib.types; attrsOf str;
      default = {};
    };
  };
}
