# pi-mcp-adapter, fetched from the npm registry by Nix instead of by pi at
# runtime. Every tarball is pinned by the integrity hash in package-lock.json,
# so what lands in the store is exactly what the lockfile says. No package in
# the tree has install scripts, and they are disabled anyway.
#
# The extension lives at $out/node_modules/pi-mcp-adapter, with its
# dependencies as siblings so Node (and pi's jiti loader) resolves them.
#
# To bump: edit the version in package.json, then in this directory run
#   nix shell nixpkgs#nodejs -c npm install --package-lock-only \
#     --legacy-peer-deps --ignore-scripts --no-audit --no-fund
# and review the lockfile diff.
#
# --legacy-peer-deps: the adapter's peers (@earendil-works/pi-ai, pi-tui,
# typebox) come from pi's own module mapping and must not be installed.
{
  lib,
  importNpmLock,
  nodejs,
  ...
}: let
  package = lib.importJSON ./package.json;
in
  importNpmLock.buildNodeModules {
    inherit nodejs package;
    npmRoot = ./.;
    derivationArgs = {
      pname = "pi-mcp-adapter";
      version = package.dependencies.pi-mcp-adapter;
      npmFlags = ["--legacy-peer-deps" "--ignore-scripts"];
      meta = {
        description = "MCP adapter extension for pi";
        homepage = "https://github.com/nicobailon/pi-mcp-adapter";
        license = lib.licenses.mit;
      };
    };
  }
