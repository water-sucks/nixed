{
  config,
  pkgs,
  lib,
  ...
}:
with lib; let
  cfg = config.programs.ssh.githubAccounts;

  githubKey = types.submodule {
    options = {
      type = mkOption {
        type = types.enum ["dsa" "ecdsa" "ecdsa-sk" "ed25519" "ed25519-sk" "rsa"];
        default = "ed25519";
        description = "Type of SSH key to generate";
      };

      email = mkOption {
        type = types.str;
        description = "Email to associate SSH key with";
      };
    };
  };

  sshConfigBlock = username: properties: {
    "github.com-${username}" = {
      hostname = "github.com";
      user = "git";
      identityFile = "~/.ssh/github_${username}";
      match = ''host github.com exec "[[ $(git config user.email) = ${properties.email} ]]" '';
    };
  };
in {
  options.programs.ssh.githubAccounts = mkOption {
    type = with types; attrsOf githubKey;
    default = {};
    description = "GitHub usernames to generate SSH keys for";
  };

  config = mkIf (cfg != {}) {
    programs.ssh.matchBlocks = mkMerge (mapAttrsToList sshConfigBlock cfg);

    home.activation.generateSshKeys = let
      generateSshStub = username: properties: let
        ssh-keygen = "${pkgs.openssh}/bin/ssh-keygen";
      in ''
        keyfile=$HOME/.ssh/github_${username}
        if [ ! -e "$keyfile" ]; then
          echo "Generating SSH key for ${username}"
          ${ssh-keygen} -t ${properties.type} -f "$keyfile" -q -N "" -C ${properties.email}
        fi
      '';
    in
      lib.hm.dag.entryAfter ["writeBoundary"] ''
        echo "Generating GitHub SSH keys"

        ${(lib.concatStringsSep "\n" (lib.mapAttrsToList generateSshStub cfg))}
      '';
  };
}
