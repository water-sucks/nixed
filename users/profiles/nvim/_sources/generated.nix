# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
}: {
  tree-sitter-norg = {
    pname = "tree-sitter-norg";
    version = "5d9c76b5c9927955f7c5d5d946397584e307f69f";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "tree-sitter-norg";
      rev = "5d9c76b5c9927955f7c5d5d946397584e307f69f";
      fetchSubmodules = false;
      sha256 = "sha256-x19Db6oVAJyNqtj0yMG9HAjzJrPuy52xp5k17r4j924=";
    };
  };
  tree-sitter-norg-meta = {
    pname = "tree-sitter-norg-meta";
    version = "4687b53e656b920cde6c0b9a7b9acf9a665cd838";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "tree-sitter-norg-meta";
      rev = "4687b53e656b920cde6c0b9a7b9acf9a665cd838";
      fetchSubmodules = false;
      sha256 = "sha256-+NInywA8KOfAVnetuRW/9GJIqFWijrMr23dhZx4b6EQ=";
    };
  };
  tree-sitter-norg-table = {
    pname = "tree-sitter-norg-table";
    version = "f354ea343b8803948e6e1df36eb586e31c529900";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "tree-sitter-norg-table";
      rev = "f354ea343b8803948e6e1df36eb586e31c529900";
      fetchSubmodules = false;
      sha256 = "sha256-xTH4LmqhtfyN9JGQdquJLQz1McZQItdEY5HpJxbuYC0=";
    };
  };
  tree-sitter-vala = {
    pname = "tree-sitter-vala";
    version = "8f690bfa639f2b83d1fb938ed3dd98a7ba453e8b";
    src = fetchFromGitHub {
      owner = "vala-lang";
      repo = "tree-sitter-vala";
      rev = "8f690bfa639f2b83d1fb938ed3dd98a7ba453e8b";
      fetchSubmodules = false;
      sha256 = "sha256-YZTE3PkBPCEkMXnLC0HSQ86v5+3/J7/ETDQp8eguFW8=";
    };
  };
}
