_: {
  services.nixos-cli = {
    enable = true;
    config = {
      aliases = {
        genlist = ["generation" "list"];
        switch = ["generation" "switch"];
        rollback = ["generation" "rollback"];
        gendel = ["generation" "delete"];
        gendelall = ["generation" "delete" "--all"];
        build = ["apply" "--no-activate" "--no-boot" "--output" "result"];
      };

      apply = {
        imply_impure_with_tag = true;
        use_git_commit_msg = true;
        ignore_dirty_trees = true;
      };
    };
  };

  security.sudo.extraConfig = ''
    Defaults env_keep += "NO_COLOR"
  '';
}
