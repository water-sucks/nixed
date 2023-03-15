{pkgs, ...}: {
  security.sudo = {
    enable = true;
    package = pkgs.sudo.override {
      withInsults = true;
    };
    extraConfig = ''
      Defaults lecture = never
    '';
  };
}
