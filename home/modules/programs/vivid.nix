{
  config,
  pkgs,
  lib,
  ...
}:
with lib; let
  cfg = config.programs.vivid;

  yamlFormat = pkgs.formats.json {};

  vividCmd = "${config.home.profileDirectory}/bin/vivid";
in {
  options.programs.vivid = {
    enable = mkEnableOption "Themable LS_COLORS generator";

    package = mkOption {
      type = types.package;
      default = pkgs.vivid;
      description = "Package to use for vivid";
    };

    theme = mkOption {
      type = types.str;
      default = "";
      description = "Theme to enable";
    };

    themes = mkOption {
      type = with types; attrsOf (either attrs lines);
      default = {};
      description = "List of vivid theme configurations";
    };

    enableBashIntegration =
      mkEnableOption "Bash integration"
      // {
        default = true;
      };

    enableZshIntegration =
      mkEnableOption "Zsh integration"
      // {
        default = true;
      };

    enableFishIntegration =
      mkEnableOption "Fish integration"
      // {
        default = true;
      };
  };

  config = mkIf cfg.enable {
    assertions = [
      {
        assertion = cfg.theme != "";
        message = "Theme must be specified";
      }
    ];

    home.packages = [cfg.package];

    xdg.configFile = mkMerge (mapAttrsToList (n: v:
      if isString v
      then {
        "vivid/themes/${n}.yml".text = v;
      }
      else {
        "vivid/themes/${n}.yml".source = yamlFormat.generate "${n}.yml" v;
      })
    cfg.themes);

    programs.bash.initExtra = mkIf cfg.enableBashIntegration ''
      export LS_COLORS=$(${vividCmd} generate ${cfg.theme})
    '';

    programs.zsh.initExtra = mkIf cfg.enableZshIntegration ''
      export LS_COLORS=$(${vividCmd} generate ${cfg.theme})
    '';

    programs.fish.interactiveShellInit = mkIf cfg.enableFishIntegration ''
      export LS_COLORS=$(${vividCmd} generate ${cfg.theme})
    '';
  };
}
