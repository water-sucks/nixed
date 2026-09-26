{
  config,
  pkgs,
  ...
}: let
  pwSecretLocation = username: {
    sopsFile = ./secrets/passwords.yml;
    format = "yaml";
    key = username;
    neededForUsers = true;
  };
in {
  imports = [
    ./hardware-configuration.nix
  ];

  time.timeZone = "America/Los_Angeles";

  networking.hostId = "8e004b0f";

  i18n.defaultLocale = "en_US.UTF-8";

  sops = {
    age.keyFile = "/persist/var/secrets/sops_key";
    secrets = {
      varun-user-pw = pwSecretLocation "varun";
      root-user-pw = pwSecretLocation "root";
    };
  };

  users.users.varun.hashedPasswordFile = "${config.sops.secrets.varun-user-pw.path}";
  users.users.root.hashedPasswordFile = "${config.sops.secrets.root-user-pw.path}";

  environment.persistence."/persist" = {
    hideMounts = true;
    directories = [
      "/var/log"
      "/var/lib/bluetooth"
      "/var/lib/alsa"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/var/lib/libvirt"
      "/var/secrets"
      "/etc/ssh"
      "/etc/NetworkManager/system-connections"
    ];
    files = [
      "/etc/machine-id"
      "/var/lib/systemd/credential.secret"
    ];

    users.varun = let
      hmOptions = config.home-manager.users.varun;
    in {
      inherit (hmOptions.persistence) directories files;
    };
  };

  services.earlyoom.enable = true;

  profiles.llama-cpp = {
    enable = true;
    settings = {
      ctx-size = 100000;
      cache-type-k = "q4_0";
      cache-type-v = "q4_0";
    };
    presets = {
      "OmniCoder-9B" = let
        model = pkgs.fetchHuggingFaceModel {
          repo = "Tesslate/OmniCoder-9B-GGUF";
          rev = "c06117a99179f36962d782946970726b9fc9e533";
          file = "omnicoder-9b-q8_0.gguf";
          hash = "sha256-O7Ng8NW/eIUD3NdR5wR2AXMpijWyZgLfuTlHTYd0VzI=";
        };
      in {
        model = "${model}";
        alias = "Tesslate/OmniCoder-9B";
        temp = "1.0";
        top-p = "0.95";
        top-k = "40";
      };
      "Qwen3-8B" = let
        model = pkgs.fetchHuggingFaceModel {
          repo = "Qwen/Qwen3-8B-GGUF";
          rev = "7c41481f57cb95916b40956ab2f0b139b296d974";
          file = "Qwen3-8B-Q4_K_M.gguf";
          hash = "sha256-2YzcvQPhfOR2gUNbUVDjTBQX9QtcABndVg5IgsV0V4U=";
        };
      in {
        model = "${model}";
        alias = "Qwen/Qwen3-8B-GGUF";
        temp = "0.6";
        top-p = "0.9";
        top-k = "20";
      };
    };
  };

  services.hardware.openrgb.enable = true;

  system.stateVersion = "21.11";
}
