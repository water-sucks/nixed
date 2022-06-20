{ pkgs, extraModulesPath, inputs, ... }:

let
  hooks = import ./hooks;

  pkgWithCategory = category: package: { inherit package category; };
  linter = pkgWithCategory "linter";
  nixed = pkgWithCategory "nixed";
in
{
  _file = toString ./.;

  imports = [ "${extraModulesPath}/git/hooks.nix" ];
  git = { inherit hooks; };

  devshell.startup.load_profiles = pkgs.lib.mkForce (pkgs.lib.noDepEntry ''
    # PATH is devshell's exorbitant privilege:
    # fence against its pollution
    _PATH=''${PATH}
    # Load installed profiles
    for file in "$DEVSHELL_DIR/etc/profile.d/"*.sh; do
      # If that folder doesn't exist, bash loves to return the whole glob
      [[ -f "$file" ]] && source "$file"
    done
    # Exert exorbitant privilege and leave no trace
    export PATH=''${_PATH}
    unset _PATH
  '');

  commands = with pkgs; [
    (nixed nix)
    (nixed agenix)
    (nixed nvfetcher)
    (nixed inputs.deploy.packages.${pkgs.system}.deploy-rs)

    (linter stylua)
    (linter nixpkgs-fmt)
    (linter editorconfig-checker)
  ]

  ++ lib.optional
    (system != "i686-linux")
    (nixed cachix)
  ;
}
