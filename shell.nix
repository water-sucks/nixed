{
  self,
  pkgs,
  ci ? false,
}: let
  inherit (pkgs) lib;
in
  pkgs.mkShell {
    name = "nixed-shell";
    packages = with pkgs;
      [
        nix-prefetch
        nvchecker
        (haskellPackages.ghcWithPackages (p: [p.nvfetcher]))
      ]
      ++ (lib.optionals (!ci) [
        agenix

        alejandra
        editorconfig-checker
        shellcheck
        shfmt
        stylua
        treefmt

        haskell-language-server
        haskellPackages.fourmolu
      ]);
    shellHook = lib.optionalString (!ci) ''
      ${self.checks.${pkgs.system}.pre-commit-check.shellHook}
    '';
  }
