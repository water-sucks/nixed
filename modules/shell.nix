{inputs, ...}: {
  perSystem = {
    config,
    pkgs,
    system,
    ...
  }: {
    devShells = let
      inherit (inputs) nixago;

      nvfetcherConfigs = import ./nixago/nvfetcher.nix {inherit pkgs;};
      lefthookConfig = import ./nixago/lefthook.nix {inherit config pkgs;};
      statixConfig = import ./nixago/statix.nix;
      nixagoConfigs =
        nvfetcherConfigs
        ++ [
          lefthookConfig
          statixConfig
        ];
    in {
      default = pkgs.mkShellNoCC {
        name = "nixed-shell";
        packages = with pkgs;
          [
            agenix
            config.treefmt.build.wrapper
            lefthook
            nodePackages.prettier
            nvfetcher
          ]
          ++ (builtins.attrValues config.treefmt.build.programs);
        shellHook = ''
          ${(nixago.lib.${system}.makeAll nixagoConfigs).shellHook}
          ${pkgs.lefthook}/bin/lefthook install
        '';
      };
    };
  };
}
