_: {
  virtualisation.docker = {
    enable = true;
    daemon.settings = {
      experimental = true;
      features.buildkit = true;
    };
  };

  environment.persistence."/persist" = {
    directories = [
      "/var/lib/docker"
    ];
  };
}
