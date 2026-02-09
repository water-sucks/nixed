_: {
  services.gnome.gnome-keyring.enable = true;

  home-manager.sharedModules = [
    {
      persistence = {
        directories = [
          ".local/share/keyrings"
        ];
      };
    }
  ];
}
