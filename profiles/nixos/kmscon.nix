{
  self,
  config,
  pkgs,
  ...
}: {
  services.kmscon = {
    enable = true;
    hwRender = true;
    extraConfig = ''
      font-name=BlexMono Nerd Font
      font-size=10
    '';
  };
}
