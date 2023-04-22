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
        --replace "Exec=/opt/tidal-hifi/tidal-hifi" "Exec=$out/bin/tidal-hifi" \
        --replace "Name=tidal-hifi" "Name=TIDAL"

      for size in 48 64 128 256 512; do
        mkdir -p $out/share/icons/hicolor/''${size}x''${size}/apps/
        convert $out/share/icons/hicolor/0x0/apps/tidal-hifi.png \
          -resize ''${size}x''${size} $out/share/icons/hicolor/''${size}x''${size}/apps/icon.png
      done
    '';
  });
in
  lib.mkIf pkgs.stdenv.isLinux {
    home.packages = [
      pkgs.playerctl
      tidal-hifi
    ];

    home.persistence."/persist/home/${config.home.username}" = {
      directories = [
        ".config/tidal-hifi"
        ".config/pulse"
      ];
    };

    xdg.mimeApps.defaultApplications = {
      "x-scheme-handler/tidal" = ["tidal-hifi.desktop"];
    };

    services.playerctld.enable = true;
  }
