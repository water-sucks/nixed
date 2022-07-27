{
  self,
  config,
  pkgs,
  ...
}: {
  programs.go = {
    enable = true;
    goPath = "Documents/GoWorkspace";
  };
}
