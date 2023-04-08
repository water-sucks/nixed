{
  self,
  pkgs,
  ...
}: let
  nvfetcherEngine = opts: request: let
    inherit (request) data output;

    name = builtins.baseNameOf output;

    value = data;
  in
    (pkgs.formats.nvfetcherToml opts).generate name value;

  nvfetcherFiles = [
    "home/profiles/apps/firefox/fetch.nix"
    "home/profiles/base/nvim/fetch.nix"
    "home/profiles/base/zsh/fetch.nix"
    "pkgs/fetch.nix"
  ];
in
  map (f: {
    data = import "${self}/${f}";
    output = "${builtins.dirOf f}/nvfetcher.toml";
    engine = nvfetcherEngine {};
  })
  nvfetcherFiles
