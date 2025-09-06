{
  perSystem = {pkgs, ...}: {
    apps.gen-srht-update-query = {
      program = pkgs.writeShellApplication {
        name = "gen-srht-update-query";
        runtimeInputs = [pkgs.jq];
        text = ''
          jq -n --rawfile manifest .srht/update.yml '{
            query: "mutation($manifest: String!) { submit(manifest: $manifest, execute: true, visibility: PRIVATE) { id status } }",
            variables: { manifest: $manifest }
          }'
        '';
      };
    };
  };
}
