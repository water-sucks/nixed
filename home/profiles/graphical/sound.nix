{
  config,
  pkgs,
  ...
}: {
  home.packages = [
    pkgs.pavucontrol
    pkgs.playerctl
  ];

  home.persistence."/persist/home/${config.home.username}" = {
    directories = [
      ".config/pulse"
      ".local/state/wireplumber"
    ];
  };

  services.playerctld.enable = true;
}
