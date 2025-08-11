{
  config,
  pkgs,
  ...
}: let
  sources = pkgs.callPackage _sources/generated.nix {};
in {
  programs.git = {
    enable = true;
    package = pkgs.stable.gitFull;
    includes = [
      {path = "${sources.git-aliases.src}/gitalias.txt";}
      {path = "${config.home.homeDirectory}/.config/git/local.txt";}
    ];
    extraConfig = {
      pull.rebase = false;
      init.defaultBranch = "main";
      core.editor = "nvim --cmd 'let g:unception_block_while_host_edits=1'";
      core.sshCommand = "ssh -o ConnectTimeout=1 -o ConnectionAttempts=1";
      core.fsmonitor = true;
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

      sw = "switch";
      swc = "switch -create";

      wt = "worktree";
      lswt = "worktree list";
      mkwt = ''!f() { git worktree add -b "$@" "$(git rev-parse --show-toplevel)+$@"; }; f'';
      rmwt = ''!f() { git worktree remove "$(git rev-parse --show-toplevel)+$@"; }; f'';

      fucked = "reset";
      unfuck = "reflog";
    };
  };

  home.packages = with pkgs; [
    # Fast status monitoring
    watchman

    # Stacking branches
    git-spice
  ];
}
