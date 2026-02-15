{
  config,
  lib,
  ...
}: {
  services.ollama = {
    enable = true;
    user = "ollama";
    group = "ollama";
  };

  environment.persistence."/persist" = {
    directories = [
      {
        inherit (config.services.ollama) user group;
        directory = config.services.ollama.home;
        mode = "750";
      }
    ];
  };

  systemd.services.ollama.serviceConfig = {
    # The ollama systemd service does not deal with bind
    # mounts properly, and attempts to configure this directory.
    # imperatively upon startup by changing permissions and other.
    # things
    StateDirectory = lib.mkForce "";
  };
}
