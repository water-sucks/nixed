_final: prev: {
  river = prev.river.overrideAttrs (_: {
    patches = [./patches/change-default-color.patch];

    postFixup = let
      launcher = prev.writeShellScript "river-launcher.sh" ''
        systemd-cat --identifier=river river
      '';
    in ''
      substituteInPlace $out/share/wayland-sessions/river.desktop \
        --replace "Exec=river" "Exec=${launcher}"
    '';
  });
}
