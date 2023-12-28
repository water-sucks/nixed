{
  config,
  pkgs,
  lib,
  ...
}: let
  tidal-hifi = pkgs.tidal-hifi.overrideAttrs (o: {
    postFixup = ''
      makeWrapper $out/opt/tidal-hifi/tidal-hifi $out/bin/tidal-hifi \
        --add-flags "--no-sandbox" \
        --prefix LD_LIBRARY_PATH : "${lib.makeLibraryPath o.buildInputs}" \
        "''${gappsWrapperArgs[@]}"
      substituteInPlace $out/share/applications/tidal-hifi.desktop \
        --replace "Exec=/opt/tidal-hifi/tidal-hifi" "Exec=$out/bin/tidal-hifi"
    '';
  });
in
  lib.mkIf pkgs.stdenv.isLinux {
    home.packages = [
      tidal-hifi
    ];

    home.persistence.${config.persistence.directory} = {
      directories = [
        ".config/tidal-hifi"
      ];
    };

    xdg.mimeApps.defaultApplications = {
      "x-scheme-handler/tidal" = ["tidal-hifi.desktop"];
    };
  }
