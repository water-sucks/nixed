{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.zfs.impermanence;

  volumeSubmodule = lib.types.submodule {
    options = {
      volume = lib.mkOption {
        type = lib.types.str;
        description = "Name of the volume to rollback";
        example = "rpool/root";
      };

      target = lib.mkOption {
        type = lib.types.str;
        description = "Name of the snapshot to rollback to";
        example = "blank";
      };
    };
  };
in {
  options.zfs.impermanence = {
    enable = lib.mkEnableOption "zfs impermanence rollback service";

    volumes = lib.mkOption {
      type = lib.types.listOf volumeSubmodule;
      description = ''
        List of ZFS volumes to rollback on shutdown.
        Each element should be an attrset with:
          - volume: the ZFS dataset name
          - target: the snapshot name to rollback to
      '';
      example = [
        {
          volume = "rpool/root";
          target = "blank";
        }
      ];
      default = [];
    };
  };

  config = lib.mkIf cfg.enable {
    assertions = [
      {
        assertion = (builtins.length cfg.volumes) > 0;
        message = "At least 1 volume must be specified to run rollback on";
      }
    ];

    systemd.shutdownRamfs = let
      zfsCmd = lib.getExe config.boot.zfs.package;
    in {
      enable = true;
      contents."/etc/systemd/system-shutdown/zfs-rollback".source = let
        rollbackLines =
          map ({
            volume,
            target,
          }: ''
            echo "Rolling back ${volume} to ${volume}@${target}"
            ${zfsCmd} rollback -r "${volume}@${target}"
          '')
          cfg.volumes;
      in
        pkgs.writeShellScript "zfs-rollback" ''
          ${lib.concatStringsSep "\n" rollbackLines}
        '';
      storePaths = [zfsCmd];
    };
  };
}
