{pkgs, ...}: {
  programs.wob = {
    enable = true;
    package = pkgs.wob.overrideAttrs (o: {
      inherit (pkgs.sources.wob) pname version src;

      buildInputs = o.buildInputs ++ [pkgs.inih];
    });
    settings = {
      globalSection = {
        width = 256;
        height = 40;
        margin = 40;
        anchor = "top left";
      };
      sections = {};
    };
  };
}
