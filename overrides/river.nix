_final: prev: {
  river = prev.river.overrideAttrs (_: {
    patches = [./patches/change-default-color.patch];

    postFixup = let
      launcher = prev.writeShellScript "river-launcher.sh" ''
        systemd-cat --identifier=river river
      '';
    in ''
      mkdir -p $out/share/wayland-sessions
      cp contrib/river.desktop $out/share/wayland-sessions

      substituteInPlace $out/share/wayland-sessions/river.desktop \
        --replace "Exec=river" "Exec=${launcher}"
    '';

    passthru.providedSessions = ["river"];
  });
}
