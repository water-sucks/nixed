_final: prev: {
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
  });
}
