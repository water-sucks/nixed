{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux;
in
  lib.mkMerge [
    {
      services.protonmail-bridge = {
        enable = true;
        package =
          if isLinux
          then
            pkgs.runCommand "protonmail-bridge"
            {
              bridge = pkgs.protonmail-bridge;
              nativeBuildInputs = [pkgs.makeWrapper];
            }
            ''
              mkdir -p $out/bin
              makeWrapper $bridge/bin/protonmail-bridge $out/bin/protonmail-bridge \
                  --set PATH ${lib.strings.makeBinPath [pkgs.gnome-keyring]}
            ''
          else pkgs.protonmail-bridge;
      };
    }

    (lib.mkIf isLinux {
      systemd.user.services.gnome-keyring = {
        Unit = {
          PartOf = ["graphical-session.target"];
        };

        Install = {WantedBy = ["graphical-session.target"];};
      };

      services.gnome-keyring = {
        enable = true;
        components = ["pkcs11" "secrets" "ssh"];
      };

      home.persistence."${config.persistence.directory}" = {
        directories = [
          ".cache/protonmail"
          ".config/protonmail"
          ".local/share/protonmail"
        ];
      };
    })
  ]
