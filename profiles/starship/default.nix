{ lib, pkgs, ... }:

let
  inherit (lib) fileContents;
in
{
  environment.shellInit = ''
    export STARSHIP_CONFIG=${
      pkgs.writeText "starship.toml"
      (fileContents ./starship.toml)
    }
  '';

  programs.bash = {
    promptInit = ''
      eval "$(${pkgs.starship}/bin/starship init bash)"
    '';
  };
}
