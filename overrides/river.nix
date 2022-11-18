final: prev: {
  river = prev.river.overrideAttrs (_: {
    patches = [./patches/change-default-color.patch];

    postFixup = let
      launcher = prev.writeShellScript "river-launcher.sh" ''
        . "/etc/profiles/per-user/$USER/etc/profile.d/hm-session-vars.sh"
        sleep 1
        # systemctl --user start graphical-session.target
        systemd-cat --identifier=river river
      '';
    in ''
      mkdir -p $out/share/wayland-sessions
      cp contrib/river.desktop $out/share/wayland-sessions

      substituteInPlace $out/share/wayland-sessions/river.desktop \
        --replace "Exec=river" "Exec=${launcher}"
    '';

    passthru.providedSessions = ["river"];

    inherit (prev.sources.river) pname version src;
  });

  wlroots = prev.wlroots.overrideAttrs (o: let
    hwdata = prev.hwdata.overrideAttrs (_: rec {
      version = "0.363";

      src = prev.fetchFromGitHub {
        owner = "vcrhonek";
        repo = "hwdata";
        rev = "v${version}";
        sha256 = "sha256-A6GNrHc/t2SVyAyJWmzQTa+pD9wGESsz7DNruW2kH4s=";
      };

      outputHashMode = null;
      outputHash = null;
    });
  in {
    inherit (prev.sources.wlroots) pname version src;

    buildInputs = o.buildInputs ++ [hwdata];
  });
}
