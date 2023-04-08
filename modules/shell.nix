{
  self,
  inputs,
  ...
}: {
  perSystem = {
    config,
    pkgs,
    system,
    ...
  }: {
    devShells = let
      inherit (inputs) nixago;

      nixagoConfigs = import ./nixago.nix {inherit self pkgs;};

      shell = {ci ? false}:
        pkgs.mkShell {
          name = "nixed-shell";
          packages = with pkgs;
            [
              alejandra
              node2nix
              nodePackages.prettier
              nvfetcher
            ]
            ++ (lib.optionals (!ci) [
                agenix

                config.treefmt.build.wrapper
              ]
              ++ (builtins.attrValues config.treefmt.build.programs));
          shellHook = pkgs.lib.optionalString (!ci) ''
            ${(nixago.lib.${system}.makeAll nixagoConfigs).shellHook}
            ${config.pre-commit.installationScript}
          '';
        };
    in {
      default = shell {};
      ci = shell {ci = true;};
    };
  };
}
