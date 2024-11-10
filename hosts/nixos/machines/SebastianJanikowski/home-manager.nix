let
  kanshiModule = {
    services.kanshi = {
      settings = [
        {
          profile.name = "default";
          profile.outputs = [
            {
              criteria = "eDP-1";
              scale = 2.0;
            }
          ];
        }
      ];
    };
  };

  autorandrModule = {pkgs, ...}: let
    leftwm = "${pkgs.leftwm}/bin/leftwm";
  in {
    programs.autorandr = {
      hooks = {
        postswitch = {
          leftwm-reload = "${leftwm} command SoftReload";
        };
      };
      profiles.default = {
        config = {
          "eDP-1" = {
            enable = true;
            mode = "1920x1200R";
            position = "0x0";
            primary = true;
            rate = "60.00";
            crtc = 0;
          };
        };
        fingerprint = {
          "eDP-1" = "00ffffffffffff004c835a4100000000001e0104b51e1378020cf1ae523cb9230c50540000000101010101010101010101010101010171df0050f0602090200888002ebd1000001b71df0050f0602090200888002ebd1000001b000000fe0053444320202020202020202020000000fe0041544e413430594e30312d3020015402030f00e3058000e606050174600700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b7";
        };
      };
    };
  };

  xrandrLaptopScreenMode = {
    xsession.initExtra = ''
      xrandr --newmode "1920x1200R" \
        154.00 1920 1968 \
        2000 2080 1200 \
        1203 1209 1235 \
        +hsync -vsync
      xrandr --addmode eDP-1 1920x1200R
    '';
  };
in {
  home-manager.sharedModules = [
    kanshiModule
    autorandrModule
    xrandrLaptopScreenMode
  ];

  home-manager.users.varun = {config, ...}: {
    sops.age.keyFile = "/persist/home/varun/.sops_key";
    home.persistence."${config.persistence.directory}" = {
      files = [
        ".sops_key"
      ];
    };
  };
}
