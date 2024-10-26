let
  openrgbModule = {
    config,
    pkgs,
    lib,
    ...
  }: {
    systemd.user.services.openrgb-apply-profile = let
      profileName = config.openrgb.profile;

      autoApplyProfile = pkgs.writeShellScript "apply-openrgb-darkrose-profile" ''
        if [ -f $HOME/.config/OpenRGB/${profileName}.orp ]; then
          ${pkgs.openrgb}/bin/openrgb -p ${profileName}
        fi
      '';
    in
      lib.mkIf (profileName != null) {
        Unit = {
          Description = "OpenRGB automatic profile application";
          PartOf = ["graphical-session.target"];
          Requires = ["graphical-session.target"];
          After = ["graphical-session.target"];
        };

        Service = {
          Type = "oneshot";
          ExecStart = "${autoApplyProfile}";
          Restart = "on-failure";
        };

        Install = {
          WantedBy = ["graphical-session.target"];
        };
      };

    home.persistence.${config.persistence.directory} = {
      directories = [
        ".config/OpenRGB"
      ];
    };
  };
in {
  home-manager.sharedModules = [
    openrgbModule
  ];
}
