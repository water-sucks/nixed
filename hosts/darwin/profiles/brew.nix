{
  config,
  lib,
  ...
}: {
  homebrew = {
    enable = true;
    global = {
      brewfile = true;
    };
    onActivation = {
      autoUpdate = true;
      upgrade = true;
    };

    casks = let
      casks' = lib.mapAttrsToList (_: cfg: cfg.homebrew.casks) config.home-manager.users;
    in
      lib.flatten casks';

    brews = let
      brews' = lib.mapAttrsToList (_: cfg: cfg.homebrew.brews) config.home-manager.users;
    in
      lib.flatten brews';
  };
}
