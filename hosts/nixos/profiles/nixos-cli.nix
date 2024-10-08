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

      apply = {
        imply_impure_with_tag = true;
      };
    };
  };

  security.sudo.extraConfig = ''
    Defaults env_keep += "NO_COLOR"
  '';
}
