{
  config,
  pkgs,
  lib,
  ...
}: let
  autoUpdateScript = pkgs.writeShellApplication {
    name = "nixed-auto-update";
    runtimeInputs = [pkgs.curl pkgs.jq];
    text = ''
      token="$(<"$CREDENTIALS_DIRECTORY/token")"

      jq -n --rawfile manifest_content ${../../../../../.srht/update.yml} '{
        query: "mutation($manifest: String!) { submit(manifest: $manifest, execute: true, visibility: PRIVATE) { id status } }",
        variables: { manifest: $manifest_content }
      }' |
      curl -X POST \
        -H "Authorization: Bearer $token" \
        -H "Content-Type: application/json" \
        --data-binary @- \
        https://builds.sr.ht/query
    '';
  };
in {
  sops.secrets.nixed-auto-update = {
    sopsFile = ../secrets/auto_update.yml;
    format = "yaml";
    key = "srht_token";
  };

  systemd.timers.nixed-auto-update = {
    description = "Submit auto-update build manifest to sr.ht";

    timerConfig = {
      OnCalendar = "Sat *-*-* 00:00:00 America/Los_Angeles";
      Persistent = false;
      Unit = "nixed-auto-update.service";
    };

    wantedBy = ["timers.target"];
  };

  systemd.services.nixed-auto-update = {
    description = "Submit auto-update build manifest to sr.ht";
    restartIfChanged = false;

    after = ["network.target"];

    serviceConfig = {
      Type = "oneshot";
      Restart = "no";
      ExecStart = lib.getExe autoUpdateScript;
      LoadCredential = [
        "token:${config.sops.secrets.nixed-auto-update.path}"
      ];
    };

    # TODO: add failure notification
  };
}
