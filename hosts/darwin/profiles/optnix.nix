{config, ...}: {
  programs.optnix = {
    enable = true;
    settings = {
      default_scope = config.networking.hostName;
    };
  };
}
