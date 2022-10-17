{
  imports = [
    ./configuration.nix
  ];

  profiles = {
    nix = true;
    core = true;
    caches = true;
    fonts = true;

    defaults = true;
    homebrew = {
      brew = true;
      vitals = true;
      dev = true;
      security = true;
      multimedia = true;
      messaging = true;
    };
  };

  users = {
    varun = true;
  };
}
