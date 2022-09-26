channels: _final: prev: {
  __dontExport = true;
  sumneko-lua-language-server =
    if prev.stdenv.isDarwin
    then channels.nixpkgs-stable.sumneko-lua-language-server # Current broken on macOS
    else prev.sumneko-lua-language-server;
}
