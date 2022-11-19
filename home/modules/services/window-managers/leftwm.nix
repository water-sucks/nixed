{
  config,
  pkgs,
  lib,
  ...
}:
with lib; let
  cfg = config.xsession.windowManager.leftwm;

  ronFormat = pkgs.formats.ron {extensions = ["#![enable(implicit_some)]"];};

  themeType = types.submodule {
    options = {
      theme = mkOption {
        inherit (ronFormat) type;
        default = {};
        description = "Theme configuration (not validated)";
      };

      up = mkOption {
        type = types.lines;
        default = "";
        description = "Theme up script";
      };

      down = mkOption {
        type = types.lines;
        default = "";
        description = "Theme down script";
      };
    };
  };
in {
  options.xsession.windowManager.leftwm = {
    enable = mkEnableOption "LeftWM window manager";

    settings = mkOption {
      inherit (ronFormat) type;
      default = {};
      description = "LeftWM configuration (not validated)";
    };

    theme = mkOption {
      type = types.str;
      default = "";
      description = "Theme to enable; if empty, no current symlink will be created.";
    };

    themes = mkOption {
      type = with types; attrsOf (either package themeType);
      default = {};
      description = "List of themes";
    };
  };

  config = mkIf cfg.enable {
    assertions = with lib; let
      themeNames = attrNames cfg.themes;
      themePackages = filterAttrs (_: isDerivation) cfg.themes;

      # Check if all theme packages contain a theme.ron
      # or theme.toml file, up script, and down script
      packageContainsValidTheme = themeName: theme:
        all (x: x) [
          ((builtins.pathExists "${theme}/theme.ron") || (builtins.pathExists "${theme}/theme.toml"))
          (builtins.pathExists "${theme}/up")
          (builtins.pathExists "${theme}/down")
        ];
    in
      [
        (hm.assertions.assertPlatform "xsession.windowManager.leftwm" pkgs platforms.linux)

        # Check if cfg.theme is in the theme list.
        {
          assertion = elem cfg.theme themeNames;
          message = ''
            ${cfg.theme} is not in the list of themes.
            Valid themes are:
              * ${concatStringsSep "\n  * " themeNames}
          '';
        }
      ]
      ++ (mapAttrsToList (n: v: {
          assertion = packageContainsValidTheme n v;
          message = "${n} is not a valid theme.";
        })
        themePackages);

    home.packages = [pkgs.leftwm];

    xdg.configFile = mkMerge (flatten [
      {
        "leftwm/config.ron" = mkIf (cfg.settings != {}) {
          source = ronFormat.generate "config.ron" cfg.settings;
        };
        "leftwm/themes/current" = mkIf (cfg.theme != "") {
          source =
            config.lib.file.mkOutOfStoreSymlink
            "${config.home.homeDirectory}/.config/leftwm/themes/${cfg.theme}";
        };
      }
      (mapAttrsToList (n: v:
        if isDerivation v
        then {
          "leftwm/themes/${n}".source = v;
        }
        else {
          "leftwm/themes/${n}/theme.ron".source = ronFormat.generate "theme.ron" v.theme;
          "leftwm/themes/${n}/up".source = pkgs.writeShellScript "up" v.up;
          "leftwm/themes/${n}/down".source = pkgs.writeShellScript "down" v.down;
        })
      cfg.themes)
    ]);
  };
}
