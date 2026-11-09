{
  config,
  pkgs,
  lib,
  ...
}: let
  sources = pkgs.callPackage _sources/generated.nix {};

  inherit (pkgs) git-spice;

  # Track every local branch that git-spice doesn't know about yet
  # TODO: solve abhinav/git-spice#504 properly instead
  gs-track-all = pkgs.writeShellApplication {
    name = "gs-track-all";
    runtimeInputs = [pkgs.gitFull git-spice pkgs.jq pkgs.coreutils];
    text = ''
      dry_run=0
      case "''${1:-}" in
        -n | --dry-run) dry_run=1 ;;
        "") ;;
        *)
          echo "usage: gs-track-all [-n|--dry-run]" >&2
          exit 2
          ;;
      esac

      if ! git rev-parse --verify -q refs/spice/data >/dev/null; then
        echo "gs-track-all: repository not initialized, run 'gs repo init' first" >&2
        exit 1
      fi

      tracked_json() { gs log short --all --json; }
      trunk="$(tracked_json | jq -r 'select(.down == null) | .name' | head -n1)"

      # Untracked local branches, sorted by commits ahead of trunk (descending),
      # so leaves are tracked first and their downstack comes along with them
      untracked() {
        local tracked
        tracked="$(tracked_json | jq -r '.name')"
        git for-each-ref --format='%(refname:short)' refs/heads/ |
          grep -vxF -f <(printf '%s\n' "$tracked") |
          while read -r b; do
            printf '%s\t%s\n' "$(git rev-list --count "$trunk..refs/heads/$b")" "$b"
          done |
          sort -t$'\t' -k1,1nr -k2,2
      }

      count=0
      skipped=()
      while IFS=$'\t' read -r -u 3 ahead branch; do
        [[ -n $branch ]] || break
        if [[ $ahead -eq 0 ]]; then
          skipped+=("$branch")
          continue
        fi
        if [[ $dry_run -eq 1 ]]; then
          echo "would track: $branch ($ahead commits ahead of $trunk)"
          continue
        fi
        # Re-check: an earlier downstack track may have picked it up
        if tracked_json | jq -e --arg b "$branch" 'select(.name == $b)' >/dev/null; then
          continue
        fi
        gs downstack track "$branch"
        count=$((count + 1))
      done 3< <(untracked)

      if [[ ''${#skipped[@]} -gt 0 ]]; then
        echo "skipped (no commits ahead of $trunk, likely merged): ''${skipped[*]}" >&2
      fi
      [[ $dry_run -eq 1 ]] || echo "ran 'gs downstack track' $count time(s)"
    '';
  };
in {
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    includes = [
      {path = "${sources.git-aliases.src}/gitalias.txt";}
      {path = "${config.home.homeDirectory}/.config/git/local.txt";}
    ];

    settings = {
      alias = {
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

        wt = "worktree";
        lswt = "worktree list";
        mkwt = ''!f() { git worktree add -b "$@" "$(git rev-parse --show-toplevel)+$@"; }; f'';
        rmwt = ''!f() { git worktree remove "$(git rev-parse --show-toplevel)+$@"; }; f'';

        fucked = "reset --hard";
        foreplay = "reset --soft";
        unfuck = "reflog";
      };

      pull.rebase = false;
      init.defaultBranch = "main";
      core.sshCommand = "ssh -o ConnectTimeout=1 -o ConnectionAttempts=1";
      core.fsmonitor = true;
      commit.gpgsign = true;

      fetch.prune = true;
      fetch.parallel = 0;
      fetch.writeCommitGraph = true;
      maintenance.strategy = "geometric";
      push.autoSetupRemote = true;
      branch.autoSetupMerge = "simple";

      spice.shorthand.track-all = ''!${lib.getExe gs-track-all} "$@"'';
    };
    signing.format = "openpgp";
  };

  home.packages = [
    git-spice
  ];

  programs.zsh.initContent = ''
    eval "$(${lib.getExe git-spice} shell completion zsh)"
  '';
}
