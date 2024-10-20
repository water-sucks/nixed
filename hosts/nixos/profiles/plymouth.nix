{pkgs, ...}: {
  boot = {
    # Make systemd and other related stuff shut up
    consoleLogLevel = 0;
    kernelParams = [
      "quiet"
      "splash"
      "bgrt_disable"
      "rd.systemd_show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
      "boot.shell_on_fail"
    ];

    plymouth = let
      plymouth_blur_theme = pkgs.stdenv.mkDerivation {
        pname = "nixos-blur-theme";
        version = "0.0.0";
        src = pkgs.fetchgit {
          url = "https://git.gurkan.in/gurkan/nixos-blur-plymouth";
          rev = "ea75b51a1f04aa914647a2929eab6bbe595bcfc0";
          hash = "sha256-BSmh+Gy3yJMA4RoJ0uaQ/WsYBs+Txr6K3cAQjf+yM5Y=";
        };

        dontConfigure = true;
        dontBuild = true;

        installPhase = ''
          mkdir -p $out/share/plymouth/themes
          cp -r nixos-blur $out/share/plymouth/themes
        '';
      };
    in {
      enable = true;
      font = "${pkgs.ibm-plex}/share/fonts/opentype/IBMPlexSans-Text.otf";
      theme = "nixos-blur";
      # themePackages = [(pkgs.adi1090x-plymouth-themes.override {selected_themes = ["deus_ex"];})];
      themePackages = [plymouth_blur_theme];
    };
  };
}
