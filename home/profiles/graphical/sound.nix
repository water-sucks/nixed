{pkgs, ...}: {
  home.packages = [
    pkgs.pavucontrol
    pkgs.playerctl
  ];

  persistence = {
    directories = [
      ".config/pulse"
      ".local/state/wireplumber"
    ];
  };

  services.playerctld.enable = true;
}
