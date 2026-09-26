{
  config,
  pkgs,
  lib,
  ...
}: let
  cfg = config.profiles.llama-cpp;

  iniFormat = pkgs.formats.ini {};

  modelsPresetFile = iniFormat.generate "models-preset.ini" cfg.presets;
in {
  options.profiles.llama-cpp = {
    enable = lib.mkEnableOption "llama-cpp config profile";

    settings = lib.mkOption {
      type = lib.types.attrs;
      description = "llama-cpp flags";
      default = {};
    };

    presets = lib.mkOption {
      inherit (iniFormat) type;
      description = "Model preset file contents";
      default = {};
    };
  };

  config = lib.mkIf cfg.enable {
    services.llama-cpp = {
      enable = true;
      settings =
        {
          host = "127.0.0.1";
          port = 11434; # Because something something fuck ollama.
          models-preset = modelsPresetFile;
        }
        // cfg.settings;
    };

    systemd.services.llama-cpp = {
      environment = {
        XDG_CACHE_HOME = "/var/cache/llama-cpp";
        MESA_SHADER_CACHE_DIR = "/var/cache/llama-cpp";
      };
      serviceConfig = {
        ReadWritePaths = ["/var/lib/llama"];
        DynamicUser = lib.mkForce false;
        User = "llama-cpp";
        Group = "llama-cpp";
      };
    };

    users.groups.llama-cpp = {};
    users.users.llama-cpp = {
      isSystemUser = true;
      group = "llama-cpp";
      extraGroups = ["video" "render"];
    };

    environment.systemPackages = [
      config.services.llama-cpp.package
    ];

    environment.persistence."/persist" = {
      directories = [
        {
          user = "llama-cpp";
          group = "llama-cpp";
          directory = "/var/lib/llama";
          mode = "750";
        }
      ];
    };
  };
}
