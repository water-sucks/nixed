{
  self,
  pkgs,
}:
pkgs.mkShell {
  name = "nixed-env";
  packages = with pkgs; [
    # Miscallaneous stuff
    agenix
    cachix

    # Formatters/linters
    treefmt
    stylua
    alejandra
    shellcheck
    shfmt
    editorconfig-checker

    # nvfetcher stuff
    haskell-language-server
    nix-prefetch
    nvchecker
    haskellPackages.fourmolu
    (haskellPackages.ghcWithPackages (p: [p.nvfetcher]))
  ];
  shellHook = ''
    ${self.checks.${pkgs.system}.pre-commit-check.shellHook}
  '';
}
