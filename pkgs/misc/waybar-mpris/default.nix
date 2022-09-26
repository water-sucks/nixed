{
  sources,
  lib,
  buildGoModule,
}:
buildGoModule {
  inherit (sources.waybar-mpris) pname version src;

  vendorSha256 = "sha256-85jFSAOfNMihv710LtfETmkKRqcdRuFCHVuPkW94X/Y=";

  meta = with lib; {
    description = "A Waybar component/utility for displaying and controlling MPRIS2 compliant media players individually";
    license = licenses.mit;
    maintainers = with maintainers; [water-sucks];
    platforms = platforms.linux;
    homepage = "https://github.com/b10n/waybar-mpris";
  };
}
