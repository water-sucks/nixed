{pkgs, ...}: {
  virtualisation.docker = {
    enable = true;
    daemon.settings = {
      experimental = true;
      features.buildkit = true;
    };
  };

  environment.systemPackages = [
    pkgs.docker-compose
    pkgs.docker-buildx
  ];

  environment.persistence."/persist" = {
    directories = [
      "/var/lib/docker"
    ];
  };
}
