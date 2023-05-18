{inputs, ...}: {
  perSystem = {
    config,
    pkgs,
    system,
    ...
  }: {
    devShells = let
      inherit (inputs) nixago;

      nvfetcherConfigs = import ./nvfetcher.nix {inherit pkgs;};
      lefthookConfig = import ./lefthook.nix {inherit config pkgs;};
      nixagoConfigs =
        nvfetcherConfigs
        ++ [
          lefthookConfig
        ];

      shell = {ci ? false}:
        pkgs.mkShell {
          name = "nixed-shell";
          packages = with pkgs;
            [
              alejandra
              node2nix
              nodePackages.prettier
              nvfetcher
              lefthook
            ]
            ++ (lib.optionals (!ci) [
                agenix

                config.treefmt.build.wrapper
              ]
              ++ (builtins.attrValues config.treefmt.build.programs));
          shellHook =
            ''
              ${(nixago.lib.${system}.makeAll nixagoConfigs).shellHook}
            ''
            + pkgs.lib.optionalString (!ci) ''
              ${pkgs.lefthook}/bin/lefthook install
            '';
        };
    in {
      default = shell {};
      ci = shell {ci = true;};
    };
  };
}
