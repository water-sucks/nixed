{
  config,
  pkgs,
  ...
}: {
  home.packages = [
    pkgs.pavucontrol
    pkgs.playerctl
  ];

  home.persistence.${config.persistence.directory} = {
    directories = [
      ".config/pulse"
      ".local/state/wireplumber"
    ];
  };

  services.playerctld.enable = true;
}
