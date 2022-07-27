{
  self,
  config,
  pkgs,
  ...
}: {
  hardware.bluetooth = {
    enable = true;
    package = pkgs.bluezFull;
  };
}
