{
  perSystem = {
    config,
    pkgs,
    ...
  }: {
    devShells = let
      shell = {ci ? false}:
        pkgs.mkShell {
          name = "nixed-shell";
          packages = with pkgs;
            [
              alejandra
              node2nix
              nix-prefetch
              nvchecker
              nodePackages.prettier
              (haskellPackages.ghcWithPackages (p: [p.nvfetcher]))
            ]
            ++ (lib.optionals (!ci) [
                agenix

                config.treefmt.build.wrapper

                haskell-language-server
                haskellPackages.fourmolu
              ]
              ++ (builtins.attrValues config.treefmt.build.programs));
          shellHook = pkgs.lib.optionalString (!ci) ''
            ${config.pre-commit.installationScript}
          '';
        };
    in {
      default = shell {};
      ci = shell {ci = true;};
    };
  };
}
