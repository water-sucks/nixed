{inputs, ...}: {
  perSystem = {
    pkgs,
    system,
    ...
  }: {
    devShells = let
      inherit (inputs) nixago;

      nvfetcherConfigs = import ./nixago/nvfetcher.nix {inherit pkgs;};
      lefthookConfig = import ./nixago/lefthook.nix {inherit pkgs;};
      statixConfig = import ./nixago/statix.nix;
      treefmtConfig = import ./nixago/treefmt.nix {inherit pkgs;};
      nixagoConfigs =
        nvfetcherConfigs
        ++ [
          lefthookConfig
          statixConfig
          treefmtConfig
        ];
    in {
      default = pkgs.mkShellNoCC {
        name = "nixed-shell";
        packages = with pkgs; [
          age
          sops
          treefmt
          lefthook
          nodePackages.prettier
          nvfetcher
          git-crypt
        ];
        shellHook = ''
          ${(nixago.lib.${system}.makeAll nixagoConfigs).shellHook}
          ${pkgs.lefthook}/bin/lefthook install
        '';
      };
    };
  };
}
