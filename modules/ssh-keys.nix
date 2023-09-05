{
  perSystem = {pkgs, ...}: {
    apps.upload-ssh-git-keys = let
      gh = "${pkgs.gh}/bin/gh";
      program = pkgs.writeShellScript "upload-ssh-git-keys" ''
        log() {
          echo "$@" >&2
        }

        tmpdir=$(mktemp -t -d upload-ssh-github-keys.XXXXXX)
        cleanup() {
          rm -rf "$tmpdir"
        }
        trap cleanup EXIT
        export GH_CONFIG_DIR="$tmpdir"

        for keyfile in $HOME/.ssh/github_*.pub; do
          filename=$(basename $keyfile)
          if [[ $filename =~ ^github_(.+).pub$ ]]; then
            username="''${BASH_REMATCH[1]}"
          fi

          log "Uploading key $filename for GitHub user $username"
          log "Please login as $username to GitHub"

          echo "skip\n" | ${gh} auth login -p ssh -h github.com -s "admin:public_key"
          ${gh} ssh-key add -t "$(hostname)" "$keyfile"
          ${gh} auth logout
          log ""
        done
      '';
    in {
      program = "${program}";
    };
  };
}
