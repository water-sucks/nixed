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
      nixagoConfigs =
        nvfetcherConfigs
        ++ [
          lefthookConfig
        ];
    in {
      default = pkgs.mkShellNoCC {
        name = "nixed-shell";
        packages = with pkgs;
          [
            agenix
            config.treefmt.build.wrapper
            lefthook
            node2nix
            nodePackages.prettier
            nvfetcher
          ]
          ++ (builtins.attrValues config.treefmt.build.programs);
        shellHook = ''
          ${(nixago.lib.${system}.makeAll nixagoConfigs).shellHook}
          ${pkgs.lefthook}/bin/lefthook install
        '';
      };

      # Slimmed-down GH Actions environment for nvfetcher to update packages in
      # This just generates the actual nvfetcher.toml files.
      ci = pkgs.mkShellNoCC {
        name = "nixed-shell-ci";
        shellHook = ''
          ${(nixago.lib.${system}.makeAll nvfetcherConfigs).shellHook}
        '';
      };
    };
  };
}
