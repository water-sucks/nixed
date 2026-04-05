{
  inputs,
  pkgs,
  lib,
  ...
}: let
  inherit (inputs.sanjay-soup.packages.${pkgs.stdenv.hostPlatform.system}) sanjay-soup;

  stateDir = "/var/lib/sanjay-soup";
in {
  users = {
    users.sanjay = {
      description = "SanjaySoup daemon user";
      group = "sanjay";
      isSystemUser = true;
      home = stateDir;
    };
    groups.sanjay = {};
  };

  systemd.services.sanjaysoup = {
    description = "SanjaySoup Discord bot";
    restartIfChanged = true;

    wantedBy = ["multi-user.target"];
    after = ["network.target"];

    serviceConfig = {
      Restart = "always";
      ExecStart = lib.getExe sanjay-soup;
      Group = "sanjay";
      User = "sanjay";
      WorkingDirectory = stateDir;
    };
  };

  environment.persistence."/persist" = {
    directories = [
      {
        directory = stateDir;
        user = "sanjay";
        group = "sanjay";
        mode = "0700";
      }
    ];
  };
}
