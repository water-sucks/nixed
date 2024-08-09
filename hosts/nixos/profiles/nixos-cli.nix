_: {
  services.nixos-cli = {
    enable = true;
    config = {
      aliases = {
        genlist = ["generation" "list"];
        switch = ["generation" "switch"];
        rollback = ["generation" "rollback"];
        build = ["apply" "--no-activate" "--no-boot" "--output result"];
      };
    };
  };
}
