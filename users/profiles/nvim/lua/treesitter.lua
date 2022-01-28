require"nvim-treesitter.configs".setup {
  -- ensure_installed = { "python", "java", "cpp", "c", "dart", "go", "gomod", "graphql", "bash", "rust", "elixir", "elm", "ocaml", "lua", "nix", "json", "yaml", "toml", "norg", },
  highlight = {
    disable = { "lua" }, -- Until the parser can be fully migrated/backported on nixpkgs
    enable = true,
  },
}
