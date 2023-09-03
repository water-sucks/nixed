{config, ...}: {
  home.persistence."/persist/home/${config.home.username}" = {
    directories = [
      ".config/pulse"
      ".local/state/wireplumber"
    ];
  };
}
