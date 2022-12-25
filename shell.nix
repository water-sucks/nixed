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
        node2nix
        nix-prefetch
        nvchecker
        (haskellPackages.ghcWithPackages (p: [p.nvfetcher]))
      ]
      ++ (lib.optionals (!ci) [
        agenix

        alejandra
        editorconfig-checker
        nodePackages.prettier
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
