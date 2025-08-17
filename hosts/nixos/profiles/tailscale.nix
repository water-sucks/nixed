_: {
  services.tailscale.enable = true;

  environment.persistence."/persist" = {
    directories = [
      "/var/lib/tailscale"
      "/var/cache/tailscale"
    ];
  };
}
