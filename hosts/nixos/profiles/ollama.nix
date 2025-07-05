{
  config,
  lib,
  ...
}: {
  services.ollama = {
    enable = true;
    user = "ollama";
    group = "ollama";
    loadModels = [
      "llama3.3"
      "codestral"
    ];
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
    StateDirectory = lib.mkForce "";
  };
}
