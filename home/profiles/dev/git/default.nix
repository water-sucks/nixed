{pkgs, ...}: let
  sources = pkgs.callPackage _sources/generated.nix {};
in {
  programs.git = {
    enable = true;
    includes = [
      {path = "${sources.git-aliases.src}/gitalias.txt";}
    ];
    extraConfig = {
      pull.rebase = false;
      init.defaultBranch = "main";
      core.editor = "nvim --cmd 'let g:unception_block_while_host_edits=1'";
      core.sshCommand = "ssh -o ConnectTimeout=1 -o ConnectionAttempts=1";
      core.fsmonitor = "rs-git-fsmonitor";
    };

    aliases = {
      cns = "-c commit.gpgsign=false commit";

      lgs = "log --stat";

      rst = "restore";
      rsts = "restore --staged";

      st = "stash";
      sta = "stash apply";
      std = "stash drop";
      stl = "stash list";
      stp = "stash pop";
      sts = "stash show --text";
      stsp = "stash show -p";
      stu = "stash --include-untracked";
      stall = "stash --all";
    };
  };

  # Fast status monitoring
  home.packages = with pkgs; [
    watchman
    rs-git-fsmonitor
  ];
}
