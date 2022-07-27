{
  self,
  config,
  pkgs,
  ...
}: {
  services.polybar.config = {
    "colors" = {
      background = "#121212";
      primary = "#6D0011";
      text = "#F8F8F2";
      grey = "#757575";
      deactivated = "#666666";
    };
  };
}
